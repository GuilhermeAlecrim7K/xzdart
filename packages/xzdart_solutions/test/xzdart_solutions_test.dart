import 'package:test/test.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';
import 'package:xzdart_solutions/src/exercises/hello_world_exercise.dart';

void main() {
  group('Hello World Exercise', () {
    late HelloWorldExercise helloWorldExercise;
    const expectedTitle = 'Hello World';
    const expectedInstruction =
        'Write a function that returns the string "Hello, world!".';
    const expectedDescription = '''
The classical introductory exercise. Just say "Hello, World!".

"Hello, World!" is the traditional first program for beginning programming in a new language or environment.

The objectives are simple:

Write a function that returns the string "Hello, World!".
Run the test suite and make sure that it succeeds.
Submit your solution and check it at the website.
If everything goes well, you will be ready to fetch your first real exercise.
''';
    const expectedOutput = 'Hello, World!';

    setUpAll(() {
      helloWorldExercise = HelloWorldExercise();
    });

    test('Title', () {
      expect(expectedTitle, helloWorldExercise.title);
    });

    test('Instruction', () {
      expect(expectedInstruction, helloWorldExercise.instruction);
    });
    test('Description', () {
      expect(expectedDescription, helloWorldExercise.description);
    });

    test('Level', () {
      expect(ExerciseLevels.easy, helloWorldExercise.level);
    });

    test('Hello world exercise output', () {
      expect(expectedOutput, helloWorldExercise.solution());
    });
  });
}
