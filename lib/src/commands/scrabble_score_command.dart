import 'package:args/command_runner.dart';
import 'package:xzdart/src/commands/base_command.dart';
import 'package:xzdart_solutions/xzdart_solutions.dart';

class ScrabbleScoreCommand extends BaseCommand {
  ScrabbleScoreCommand() : super(exercise: ScrabbleScoreExercise());

  @override
  String get name => 'scrabble-score';

  @override
  String get invocation => 'xzdart $name [word]';

  @override
  void run() {
    var args = argResults?.rest;
    if (args == null || args.length > 1) {
      throw UsageException(
          "This exercise mandatorily takes one argument", usage);
    }
    if (args.isEmpty) {
      print(usage);
    } else {
      print((exercise as ScrabbleScoreExercise).solution(args[0]));
    }
  }
}
