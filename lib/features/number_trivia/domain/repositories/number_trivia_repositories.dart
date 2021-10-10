import 'package:arc_flutter1/core/error/failures.dart';
import 'package:arc_flutter1/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:dartz/dartz.dart';
abstract class NumberTriviaRepositories {
 Future<Either<Failure,NumberTrivia>> getConcreateNumberTrivia(int number);
Future <Either<Failure , NumberTrivia>> getRandomNumberTrivia();
}