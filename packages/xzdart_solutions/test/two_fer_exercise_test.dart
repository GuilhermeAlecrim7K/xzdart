import 'package:test/test.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';
import 'package:xzdart_solutions/src/exercises/two_fer_exercise.dart';

void main() {
  final TwoFerExercise twoFerExercise = TwoFerExercise();
  group('Properties', () {
    const expectedTitle = 'Two Fer';
    const expectedInstruction =
        'Given a name, return a string with the message: One for name, one for me.';
    const expectedDescription = '''
Two-fer or 2-fer is short for two for one. One for you and one for me.

Given a name, return a string with the message:

One for name, one for me.

Where "name" is the given name.

However, if the name is missing, return the string:

One for you, one for me.
''';

    test('Title', () {
      expect(twoFerExercise.title, expectedTitle);
    });

    test('Instruction', () {
      expect(twoFerExercise.instruction, expectedInstruction);
    });
    test('Description', () {
      expect(twoFerExercise.description, expectedDescription);
    });

    test('Level', () {
      expect(twoFerExercise.level, ExerciseLevels.easy);
    });

    test('Examples', () {
      expect(twoFerExercise.examples!.isEmpty, false);
    });
  });

  group('Solution', () {
    test('with a name', () {
      expect(twoFerExercise.solution('John'), 'One for John, one for me.');
    });
    test('without a name', () {
      expect(twoFerExercise.solution(), 'One for you, one for me.');
    });
  });
}
