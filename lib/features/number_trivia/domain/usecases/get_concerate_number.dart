import 'package:arc_flutter1/core/error/failures.dart';
import 'package:arc_flutter1/core/usecases/usecases.dart';
import 'package:arc_flutter1/features/number_trivia/domain/entints/number_trivia.dart';
import 'package:arc_flutter1/features/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
class GetConcreateNumberTrivia implements Usecase <NumberTrivia,Params > {
  final NumberTriviaRepositories repositories;
  GetConcreateNumberTrivia(this.repositories);
  Future<Either<Failure,NumberTrivia>>call(Params params)
  async {
    return await repositories.getConcreateNumberTrivia(params.number);
  }
}
class Params extends Equatable {
  final int number;
  Params({required this.number});
}