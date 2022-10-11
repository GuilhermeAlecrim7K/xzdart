import 'package:args/command_runner.dart';

class GigaSecondCommand extends Command {
  @override
  String get description => '''
Given a moment, determine the moment that would be after a gigasecond has passed.

A gigasecond is 10^9 (1,000,000,000) seconds.
''';

  @override
  String get name => 'gigasecond';
}
