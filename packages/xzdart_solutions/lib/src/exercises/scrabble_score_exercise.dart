import 'package:xzdart_solutions/src/base_exercise.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';

class ScrabbleScoreExercise implements BaseExercise {
  @override
  String get description => '''
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

  @override
  String get instruction =>
      'Given a word, compute the Scrabble score for that word.';
  @override
  ExerciseLevels get level => ExerciseLevels.easy;

  @override
  String get title => 'Scrabble Score';

  @override
  String? examples = '''
   ========================
  | Word     | Total value |
  |----------|-------------|
  | cabbage  | 14          |
  | quiz     | 22          |
  | language | 10          |
   ========================
''';

  final Map<String, int> _letterValues = const {
    'A': 1,
    'E': 1,
    'I': 1,
    'O': 1,
    'U': 1,
    'L': 1,
    'N': 1,
    'R': 1,
    'S': 1,
    'T': 1,
    'D': 2,
    'G': 2,
    'B': 3,
    'C': 3,
    'M': 3,
    'P': 3,
    'F': 4,
    'H': 4,
    'V': 4,
    'W': 4,
    'Y': 4,
    'K': 5,
    'J': 8,
    'X': 8,
    'Q': 10,
    'Z': 10
  };

  int _fold(int previousValue, String element) {
    int? letterValue = _letterValues[element.toUpperCase()];
    if (letterValue != null) {
      return previousValue + letterValue;
    } else {
      throw FormatException(
          'The character $element is not a valid scrabble character', element);
    }
  }

  int solution(String param) {
    return param.split('').fold(0, _fold);
  }
}
