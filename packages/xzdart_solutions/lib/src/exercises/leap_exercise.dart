import 'package:xzdart_solutions/src/base_exercise.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';

class LeapExercise implements BaseExercise {
  @override
  String get description => '''
Given a year, report if it is a leap year.

The tricky thing here is that a leap year in the Gregorian calendar occurs:

- on every year that is evenly divisible by 4
  - except every year that is evenly divisible by 100
    - unless the year is also evenly divisible by 400
''';

  @override
  String get instruction => 'Given a year, report if it is a leap year.';

  @override
  ExerciseLevels get level => ExerciseLevels.easy;

  bool solution(int year) =>
      (year > 0) &&
      (((year % 4 == 0) && (year % 100 != 0)) || (year % 4 + year % 400 == 0));

  @override
  String get title => 'Leap';

  @override
  String? examples = '''
   ===============
  | Year | Result |
  |------|--------|
  | 1997 | false  |
  | 1996 | true   |
  | 1900 | false  |
  | 2000 | true   |
   ===============
''';
}
