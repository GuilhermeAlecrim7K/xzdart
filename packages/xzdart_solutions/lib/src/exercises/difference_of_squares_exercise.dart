import 'package:xzdart_solutions/src/base_exercise.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';

class DifferenceOfSquaresExercise implements BaseExercise {
  @override
  String get title => 'Difference of Squares';

  @override
  String get instruction =>
      'Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.';

  @override
  String get description => '''
Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

You are not expected to discover an efficient solution to this yourself from first principles; research is allowed, indeed, encouraged. Finding the best algorithm for the problem is a key skill in software engineering.
''';

  @override
  String? examples = '''
The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.

The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.

Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.
''';

  @override
  ExerciseLevels get level => ExerciseLevels.easy;

  int solution(int number) {
    if (number < 1) {
      throw FormatException('Number must be greater than 0');
    }
    var squareOfTheSum = 0;
    var sumOfTheSquares = 0;
    for (var n = number; n > 0; n--) {
      squareOfTheSum += n;
      sumOfTheSquares += (n * n);
    }
    return (squareOfTheSum * squareOfTheSum) - sumOfTheSquares;
  }
}
