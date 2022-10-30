import 'package:args/command_runner.dart';
import 'package:xzdart/src/commands/base_command.dart';
import 'package:xzdart_solutions/xzdart_solutions.dart';

class LeapCommand extends BaseCommand {
  LeapCommand() : super(exercise: LeapExercise());

  @override
  String get name => 'leap';

  @override
  String get invocation => 'xzdart $name [year]';

  @override
  void run() {
    var args = argResults?.rest;
    if (args == null || args.length != 1) {
      throw UsageException(
          "This exercise mandatorily takes one argument", usage);
    }
    try {
      var yearArgument = int.parse(args[0]);
      print((exercise as LeapExercise).solution(yearArgument));
    } on FormatException {
      throw UsageException('Argument must be an integer greater than 0', usage);
    }
  }
}
