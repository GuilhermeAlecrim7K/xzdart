import 'dart:math';

import 'package:xzdart_solutions/src/base_exercise.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';

class ArmstrongNumbersExercise implements BaseExercise {
  @override
  String get title => 'Armstrong Numbers';

  @override
  String get instruction =>
      'Determine whether a number is an Armstrong number.';

  @override
  String get description => '''
An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits.

Write some code to determine whether a number is an Armstrong number.
''';

  @override
  String? examples = '''
  - 9 is an Armstrong number, because 9 = 9^1 = 9
  - 10 is not an Armstrong number, because 10 != 1^2 + 0^2 = 1
  - 153 is an Armstrong number, because: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
  - 154 is not an Armstrong number, because: 154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190
''';

  @override
  ExerciseLevels get level => ExerciseLevels.easy;

  bool solution(int number) {
    if (number < 0) return false;
    if (number == 0) return true;

    var digits = <int>[];
    var numberOfDigits = 0;
    var n = number;
    do {
      digits.add(n % 10);
      numberOfDigits++;
      n ~/= 10;
    } while (n > 0);
    int sumOfDigitsToThePowerOfNumberOfDigits = digits.fold(
        0,
        (previousValue, digit) =>
            previousValue += (pow(digit, numberOfDigits).toInt()));
    return sumOfDigitsToThePowerOfNumberOfDigits == number;
  }
}
