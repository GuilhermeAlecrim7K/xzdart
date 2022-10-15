import 'package:xzdart_solutions/src/base_exercise.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';

class TwoFerExercise implements BaseExercise {
  @override
  String get description => '''
Two-fer or 2-fer is short for two for one. One for you and one for me.

Given a name, return a string with the message:

One for name, one for me.

Where "name" is the given name.

However, if the name is missing, return the string:

One for you, one for me.
''';

  @override
  String get instruction =>
      'Given a name, return a string with the message: One for name, one for me.';

  @override
  ExerciseLevels get level => ExerciseLevels.easy;

  String solution([String? param]) {
    var name = param ?? 'you';
    return 'One for $name, one for me.';
  }

  @override
  String get title => 'Two Fer';

  @override
  String? examples = '''
   ======================================
  | Name   | String to Return            |
  | ------ | --------------------------- |
  | Alice  | One for Alice, one for me.  |
  | Bob    | One for Bob, one for me.    |
  |        | One for you, one for me.    |
  | Zaphod | One for Zaphod, one for me. |
   ======================================
''';
}
