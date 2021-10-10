import 'package:arc_flutter1/core/error/failures.dart';
import 'package:arc_flutter1/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
abstract class Usecase<Type , Params> {
  Future <Either<Failure , NumberTrivia>> call(Params params);
}
class NoParms extends Equatable{
  List<Object> get props => throw UnimplementedError();
}
