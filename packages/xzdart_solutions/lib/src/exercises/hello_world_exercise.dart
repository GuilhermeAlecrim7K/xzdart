import 'package:xzdart_solutions/src/base_exercise.dart';
import 'package:xzdart_solutions/src/exercise_levels.dart';
import 'dart:core';

class HelloWorldExercise extends BaseExercise with LevelEasy {
  @override
  String get title => "Hello World";

  @override
  String get instruction =>
      'Write a function that returns the string "Hello, world!".';

  @override
  String get description => '''
The classical introductory exercise. Just say "Hello, World!".

"Hello, World!" is the traditional first program for beginning programming in a new language or environment.

The objectives are simple:

Write a function that returns the string "Hello, World!".
Run the test suite and make sure that it succeeds.
Submit your solution and check it at the website.
If everything goes well, you will be ready to fetch your first real exercise.
''';

  String solution() => 'Hello, World!';
}

String helloWorld() {
  return 'Hello, world!';
}
