import 'package:args/command_runner.dart';

class MatchingBracketsCommand extends Command {
  @override
  String get description => '''
Given a string containing brackets [], braces {}, parentheses (), or any combination thereof, verify that any and all pairs are matched and nested correctly.
''';

  @override
  String get name => 'matching-brackets';
}
