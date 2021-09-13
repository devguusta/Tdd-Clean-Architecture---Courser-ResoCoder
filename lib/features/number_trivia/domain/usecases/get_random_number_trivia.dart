import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:tdd_clean1/core/error/faiures.dart';
import 'package:tdd_clean1/core/error/usecases/usecase.dart';
import 'package:tdd_clean1/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean1/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia,NoParams> {
  final NumberTriviaRepository repository;
  GetRandomNumberTrivia({
    required this.repository,
  });
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params)async {
   return await repository.getRandomNumberTrivia();
  }

}

class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}