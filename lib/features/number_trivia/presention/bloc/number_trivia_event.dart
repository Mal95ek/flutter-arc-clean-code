part of 'number_trivia_bloc.dart';

abstract class NumberTriviaEvent extends Equatable {
  List<Object> get props =>[];
}
class GetTriviaForConcerateNumber extends NumberTriviaEvent {
final String numberString;
  GetTriviaForConcerateNumber(this.numberString);
}
class GetTriviaForRandomNumber extends NumberTriviaEvent {

}