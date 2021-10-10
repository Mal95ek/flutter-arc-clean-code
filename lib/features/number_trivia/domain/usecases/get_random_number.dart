import 'package:arc_flutter1/core/error/failures.dart';
import 'package:arc_flutter1/core/usecases/usecases.dart';
import 'package:arc_flutter1/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:arc_flutter1/features/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
class GetRandomNumberTrivia implements Usecase<NumberTrivia ,NoParms> {
  final NumberTriviaRepositories repositories;
  GetRandomNumberTrivia(this.repositories);
  Future<Either<Failure, NumberTrivia>> call(NoParms params) async{
return await  repositories.getRandomNumberTrivia();
  }
}