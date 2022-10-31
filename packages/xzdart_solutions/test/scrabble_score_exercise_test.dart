import 'package:test/test.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';
import 'package:xzdart_solutions/src/exercises/scrabble_score_exercise.dart';

void main() {
  final ScrabbleScoreExercise scrabbleScoreExercise = ScrabbleScoreExercise();
  group('Properties', () {
    const expectedTitle = 'Scrabble Score';
    const expectedInstruction =
        'Given a word, compute the Scrabble score for that word.';
    const expectedDescription = '''
# Instructions
Given a word, compute the Scrabble score for that word.

## Letter Values
You'll need these:

```
| Letter                       | Value |
|------------------------------|-------|
| A, E, I, O, U, L, N, R, S, T | 1     |
| D, G                         | 2     |
| B, C, M, P                   | 3     |
| F, H, V, W, Y                | 4     |
| K                            | 5     |
| J, X                         | 8     |
| Q, Z                         | 10    |
```
''';

    test('Title', () {
      expect(scrabbleScoreExercise.title, expectedTitle);
    });

    test('Instruction', () {
      expect(scrabbleScoreExercise.instruction, expectedInstruction);
    });
    test('Description', () {
      expect(scrabbleScoreExercise.description, expectedDescription);
    });

    test('Level', () {
      expect(scrabbleScoreExercise.level, ExerciseLevels.easy);
    });

    test('Examples', () {
      expect(scrabbleScoreExercise.examples!.isEmpty, false);
    });
  });

  group('Solution', () {
    test('All vowels once', () {
      expect(scrabbleScoreExercise.solution('aeiou'), 5);
    });
    test('with one point consonants', () {
      expect(scrabbleScoreExercise.solution('lnrst'), 5);
    });
    test('with two point consonants', () {
      expect(scrabbleScoreExercise.solution('dg'), 4);
    });
    test('with three point consonants', () {
      expect(scrabbleScoreExercise.solution('bcmp'), 12);
    });
    test('with four point consonants', () {
      expect(scrabbleScoreExercise.solution('fhvwy'), 20);
    });
    test('with five, eight and ten point consonants', () {
      expect(scrabbleScoreExercise.solution('kjxqz'), 41);
    });
    test('with all letters at once', () {
      expect(scrabbleScoreExercise.solution('abcdefghijklmnopqrstuvwxyz'), 87);
    });
    test('with the word \'cabbage\'', () {
      expect(scrabbleScoreExercise.solution('cabbage'), 14);
    });
    test('with the word \'quiz\'', () {
      expect(scrabbleScoreExercise.solution('quiz'), 22);
    });
    test('with the word \'language\'', () {
      expect(scrabbleScoreExercise.solution('language'), 10);
    });
    test('with invalid characters', () {
      void arglessCallToSolutionToConformToThrowsADocumentation() =>
          scrabbleScoreExercise.solution('fa124;/\\');
      expect(arglessCallToSolutionToConformToThrowsADocumentation,
          throwsA(isA<FormatException>()));
    });
  });
}
