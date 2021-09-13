import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_clean1/features/number_trivia/domain/entities/number_trivia.dart';

import '../faiures.dart';

abstract class UseCase<Number, Params> {
  Future<Either<Failure, NumberTrivia>> call(Params params);

}
class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
  
}