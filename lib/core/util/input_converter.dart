import 'package:arc_flutter1/core/error/failures.dart';
import 'package:dartz/dartz.dart';
class InputConverter {
  Either<Failure , int>? stringToUnsaignedInteger(String str) {
    try{
     final integer = int.parse(str);
 if(integer < 0 ){
   return Right(integer);
 }
    }on FormatException {
  return Left(InvalidInputFailure());
    }
  }
}
class InvalidInputFailure extends Failure {

  List<Object> get props =>[];
}