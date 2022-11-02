import 'package:args/command_runner.dart';
import 'package:xzdart/main.dart';
import 'package:test/test.dart';

void main() {
  final commandRunner = XzDartCommand();
  group('Properties', () {
    final armstrongNumbersCommand =
        commandRunner.commands['armstrong-numbers']!;

    test('name', () {
      expect(armstrongNumbersCommand.name, 'armstrong-numbers');
    });

    test('takesArguments', () {
      expect(armstrongNumbersCommand.takesArguments, true);
    });

    test('hidden', () {
      expect(armstrongNumbersCommand.hidden, false);
    });

    test('category', () {
      expect(armstrongNumbersCommand.category, 'Easy');
    });
  });

  group('run', () {
    test('More than 1 arg provided', () {
      expectLater(commandRunner.run(['armstrong-numbers', '1', '9']),
          throwsA(isA<UsageException>()));
    });
    test('Non integer arg', () {
      expectLater(commandRunner.run(['armstrong-numbers', 'string']),
          throwsA(isA<UsageException>()));
      expectLater(commandRunner.run(['armstrong-numbers', '-19.48']),
          throwsA(isA<UsageException>()));
    });
  });
}
