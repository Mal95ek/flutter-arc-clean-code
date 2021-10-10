import 'package:equatable/equatable.dart';
abstract class Failure extends Equatable {
Failure([List properites = const<dynamic>[]]);
}
class ServerFailure extends Failure{
  List<Object> get props => throw UnimplementedError();
}
class CasheFailure extends Failure {
  List<Object> get props => throw UnimplementedError();
}