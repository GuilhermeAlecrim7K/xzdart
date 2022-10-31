import 'package:args/command_runner.dart';
import 'package:xzdart/main.dart';
import 'package:test/test.dart';

void main() {
  final commandRunner = XzDartCommand();
  group('Properties', () {
    final scrabbleScoreCommand = commandRunner.commands['scrabble-score']!;

    test('name', () {
      expect(scrabbleScoreCommand.name, 'scrabble-score');
    });

    test('takesArguments', () {
      expect(scrabbleScoreCommand.takesArguments, true);
    });

    test('hidden', () {
      expect(scrabbleScoreCommand.hidden, false);
    });

    test('category', () {
      expect(scrabbleScoreCommand.category, 'Easy');
    });
  });

  group('run', () {
    test('More than 1 arg provided', () {
      expectLater(commandRunner.run(['scrabble-score', 'arg1', 'arg2']),
          throwsA(isA<UsageException>()));
    });
  });
}
