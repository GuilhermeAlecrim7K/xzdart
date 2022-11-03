import 'package:test/test.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';
import 'package:xzdart_solutions/src/exercises/difference_of_squares_exercise.dart';

void main() {
  final DifferenceOfSquaresExercise differenceOfSquaresExercise =
      DifferenceOfSquaresExercise();
  group('Properties', () {
    const expectedTitle = 'Difference of Squares';
    const expectedInstruction =
        'Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.';
    const expectedDescription = '''
Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

You are not expected to discover an efficient solution to this yourself from first principles; research is allowed, indeed, encouraged. Finding the best algorithm for the problem is a key skill in software engineering.
''';

    test('Title', () {
      expect(differenceOfSquaresExercise.title, expectedTitle);
    });

    test('Instruction', () {
      expect(differenceOfSquaresExercise.instruction, expectedInstruction);
    });
    test('Description', () {
      expect(differenceOfSquaresExercise.description, expectedDescription);
    });

    test('Level', () {
      expect(differenceOfSquaresExercise.level, ExerciseLevels.easy);
    });

    test('Examples', () {
      expect(differenceOfSquaresExercise.examples!.isEmpty, false);
    });
  });

  group('Solution', () {
    test('with negative number', () {
      expect(() => differenceOfSquaresExercise.solution(-1),
          throwsA(isA<FormatException>()));
    });
    test('with 3', () {
      expect(differenceOfSquaresExercise.solution(3), 22);
    });
    test('with 9', () {
      expect(differenceOfSquaresExercise.solution(9), 1740);
    });
    test('with 10', () {
      expect(differenceOfSquaresExercise.solution(10), 2640);
    });
  });
}
