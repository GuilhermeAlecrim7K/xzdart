import 'package:xzdart_solutions/src/base_exercise.dart';

enum ExerciseLevels { easy, medium, hard }

mixin LevelEasy on BaseExercise {
  @override
  ExerciseLevels get level => ExerciseLevels.easy;
}

mixin LevelMedium on BaseExercise {
  @override
  ExerciseLevels get level => ExerciseLevels.medium;
}

mixin LevelHard on BaseExercise {
  @override
  ExerciseLevels get level => ExerciseLevels.hard;
}
