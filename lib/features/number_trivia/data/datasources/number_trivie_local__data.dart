import 'dart:convert';

import 'package:arc_flutter1/core/error/excepation.dart';
import 'package:arc_flutter1/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTrivialModel> getLastNumberTrivia();
  Future<void> cashNumberTrivia(NumberTrivialModel triviatocatch);
}

const Cashed_Number_Trivia = 'Cashed_Number_Trivia';

class NumberTriviaLocalDataSourceIml implements NumberTriviaLocalDataSource {
  final SharedPreferences sharedPreferences;
  NumberTriviaLocalDataSourceIml({required this.sharedPreferences});
  @override
  Future<void> cashNumberTrivia(NumberTrivialModel triviatocatch) {
    return sharedPreferences.setString(
        Cashed_Number_Trivia, json.encode(triviatocatch.toJson()));
  }

  @override
  Future<NumberTrivialModel> getLastNumberTrivia() {
    final json = sharedPreferences.getString(Cashed_Number_Trivia);
    if (json != null) {
      return Future.value(NumberTrivialModel.fromJson(jsonDecode(json)));
    } else {
      throw CacheException();
    }
  }
}
