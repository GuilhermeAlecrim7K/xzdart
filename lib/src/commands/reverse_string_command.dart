import 'package:args/command_runner.dart';

class ReverseStringCommand extends Command {
  @override
  String get description => '''
Reverse a string

For example: input: "cool" output: "looc"
''';

  @override
  String get name => 'reverse-string';
}
