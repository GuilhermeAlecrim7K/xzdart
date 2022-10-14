import 'package:xzdart/src/commands/base_command.dart';
import 'package:xzdart_solutions/xzdart_solutions.dart';

class HelloWorldCommand extends BaseCommand {
  HelloWorldCommand() : super(exercise: HelloWorldExercise());

  @override
  String get name => 'hello-world';

  @override
  String get invocation => 'xzdart hello-world';

  @override
  bool get takesArguments => false;

  @override
  void run() {
    print((exercise as HelloWorldExercise).solution());
  }
}
