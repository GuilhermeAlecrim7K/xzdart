import 'package:test/test.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';
import 'package:xzdart_solutions/src/exercises/armstrong_numbers_exercise.dart';

void main() {
  final ArmstrongNumbersExercise armstrongNumbersExercise =
      ArmstrongNumbersExercise();
  group('Properties', () {
    const expectedTitle = 'Armstrong Numbers';
    const expectedInstruction =
        'Determine whether a number is an Armstrong number.';
    const expectedDescription = '''
An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits.

Write some code to determine whether a number is an Armstrong number.
''';

    test('Title', () {
      expect(armstrongNumbersExercise.title, expectedTitle);
    });

    test('Instruction', () {
      expect(armstrongNumbersExercise.instruction, expectedInstruction);
    });
    test('Description', () {
      expect(armstrongNumbersExercise.description, expectedDescription);
    });

    test('Level', () {
      expect(armstrongNumbersExercise.level, ExerciseLevels.easy);
    });

    test('Examples', () {
      expect(armstrongNumbersExercise.examples!.isEmpty, false);
    });
  });

  group('Solution', () {
    List<int> armstrongNumbersInRange(int first, int last) {
      var armstrongNumbers = <int>[];
      for (int i = first; i <= last; i++) {
        var result = armstrongNumbersExercise.solution(i);
        if (result) {
          armstrongNumbers.add(i);
        }
      }
      return armstrongNumbers;
    }

    test('with negative number', () {
      expect(armstrongNumbersExercise.solution(-1), false);
    });
    test('with one-digit numbers', () {
      expect([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], armstrongNumbersInRange(0, 9));
    });
    test('with two-digit numbers', () {
      expect([], armstrongNumbersInRange(10, 99));
    });
    test('with three-digit numbers', () {
      expect([153, 370, 371, 407], armstrongNumbersInRange(100, 999));
    });
    test('with four-digit numbers', () {
      expect([1634, 8208, 9474], armstrongNumbersInRange(1000, 9999));
    });
  });
}
