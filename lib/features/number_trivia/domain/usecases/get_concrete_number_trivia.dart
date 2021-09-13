import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:tdd_clean1/core/error/usecases/usecase.dart';

import '../../../../core/error/faiures.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);
  Future<Either<Failure, NumberTrivia>> call(
   Params params,
  ) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;
  Params({
    required this.number,
  });

  @override
  List<Object> get props => [number];
}
