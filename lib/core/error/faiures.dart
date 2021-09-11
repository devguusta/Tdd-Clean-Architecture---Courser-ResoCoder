import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const<dynamic>[]]) : super();

  @override
  bool get stringify => true;

  // @override
  // List<Object> get props => [properties];
}