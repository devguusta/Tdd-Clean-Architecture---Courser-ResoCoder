import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_clean1/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean1/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_clean1/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
late var usecase;
 late var mockNumberTriviaRepository;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  final tNumber = 1;
  var tNumberTrivia = NumberTrivia(number: 1,text: 'test');
  test('should get trivia for the number from the repository', () async{
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any)).thenAnswer((_) async => Right(tNumberTrivia));
    final result = await usecase.execute(number: tNumber);
    expect(result,Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
