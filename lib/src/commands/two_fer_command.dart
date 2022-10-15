import 'package:args/command_runner.dart';
import 'package:xzdart/src/commands/base_command.dart';
import 'package:xzdart_solutions/xzdart_solutions.dart';

class TwoFerCommand extends BaseCommand {
  TwoFerCommand() : super(exercise: TwoFerExercise());

  @override
  String get name => 'two-fer';

  @override
  String get invocation => 'xzdart $name [argument]';

  @override
  void run() {
    var args = argResults?.rest;
    if (args != null && args.length != 1) {
      throw UsageException(
          "This exercise mandatorily takes one argument", usage);
    }
    print((exercise as TwoFerExercise).solution(args?[0]));
  }
}
