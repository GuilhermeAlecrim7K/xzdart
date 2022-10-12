import 'package:args/command_runner.dart';
import 'package:xzdart_solutions/xzdart_solutions.dart';

abstract class BaseCommand extends Command {
  final BaseExercise exercise;

  BaseCommand({required this.exercise});

  @override
  String get description => '${exercise.title.toUpperCase()}\n\n'
      'Level: ${exercise.level.name.capitalized()}\n\n'
      'Task: ${exercise.instruction}\n\n'
      'Description:\n${exercise.description}';

  @override
  String get summary =>
      '${'<${exercise.level.name.capitalized()}>'.padRight(8)} ${exercise.instruction}';

  @override
  String get invocation => 'xzdart $name [arguments]';
}

extension _Capitalizer on String {
  String capitalized() => this[0].toUpperCase() + substring(1);
}
