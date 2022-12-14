import 'package:xzdart_solutions/src/exercise_levels.dart';

abstract class BaseExercise {
  String get title;
  String get instruction;
  String get description;
  String? examples;
  ExerciseLevels get level;
}
