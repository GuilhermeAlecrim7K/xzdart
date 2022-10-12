import 'package:args/command_runner.dart';
import 'package:xzdart_solutions/xzdart_solutions.dart';

abstract class BaseCommand extends Command{

  final BaseExercise exercise;

  BaseCommand({required this.exercise}): super();

  @override
  String get description => '${exercise.instruction}\n\n'
    'Description\n${exercise.description}';

  @override
  String get invocation => 'xzdart $name [arguments]';
}
