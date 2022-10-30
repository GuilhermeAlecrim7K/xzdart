import 'package:test/test.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';
import 'package:xzdart_solutions/src/exercises/leap_exercise.dart';

void main() {
  final LeapExercise leapExercise = LeapExercise();
  group('Properties', () {
    const expectedTitle = 'Leap';
    const expectedInstruction = 'Given a year, report if it is a leap year.';
    const expectedDescription = '''
Given a year, report if it is a leap year.

The tricky thing here is that a leap year in the Gregorian calendar occurs:

- on every year that is evenly divisible by 4
  - except every year that is evenly divisible by 100
    - unless the year is also evenly divisible by 400
''';

    test('Title', () {
      expect(leapExercise.title, expectedTitle);
    });

    test('Instruction', () {
      expect(leapExercise.instruction, expectedInstruction);
    });
    test('Description', () {
      expect(leapExercise.description, expectedDescription);
    });

    test('Level', () {
      expect(leapExercise.level, ExerciseLevels.easy);
    });

    test('Examples', () {
      expect(leapExercise.examples!.isEmpty, false);
    });
  });

  group('Solution', () {
    test('with year lower than or equal to zero', () {
      expect(leapExercise.solution(0), false);
      expect(leapExercise.solution(-4), false);
    });
    test('with year not divisible by 4', () {
      expect(leapExercise.solution(1997), false);
    });
    test('with year divisible by 4, not divisible by 100', () {
      expect(leapExercise.solution(1996), true);
    });
    test('with year divisible by 4, divisible by 100, not divisible by 400',
        () {
      expect(leapExercise.solution(1900), false);
    });
    test('with year divisible by 4, divisible by 100, divisible by 400', () {
      expect(leapExercise.solution(2000), true);
    });
  });
}
