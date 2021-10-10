import 'package:equatable/equatable.dart';
class NumberTrivia extends Equatable{
  @override
  List<Object> get props => [];
  final String text;
  final int number;
  NumberTrivia({required this.text, required this.number});}
