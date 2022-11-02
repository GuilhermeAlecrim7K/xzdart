import 'package:args/command_runner.dart';
import 'package:xzdart/src/commands/base_command.dart';
import 'package:xzdart_solutions/xzdart_solutions.dart';

class ArmstrongNumbersCommand extends BaseCommand {
  ArmstrongNumbersCommand() : super(exercise: ArmstrongNumbersExercise());

  @override
  String get name => 'armstrong-numbers';

  @override
  String get invocation => 'xzdart $name [positive integer]';

  @override
  void run() {
    var args = argResults?.rest;
    if (args == null || args.length != 1) {
      throw UsageException(
          "This exercise mandatorily takes one argument", usage);
    }
    try {
      var yearArgument = int.parse(args[0]);
      print((exercise as ArmstrongNumbersExercise).solution(yearArgument));
    } on FormatException {
      throw UsageException('Argument must be a positive integer', usage);
    }
  }
}
