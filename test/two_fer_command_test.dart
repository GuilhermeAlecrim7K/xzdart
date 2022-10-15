import 'package:args/command_runner.dart';
import 'package:xzdart/main.dart';
import 'package:test/test.dart';

void main() {
  final commandRunner = XzDartCommand();
  group('Properties', () {
    final twoFerCommand = commandRunner.commands['two-fer']!;

    test('name', () {
      expect(twoFerCommand.name, 'two-fer');
    });

    test('takesArguments', () {
      expect(twoFerCommand.takesArguments, true);
    });

    test('hidden', () {
      expect(twoFerCommand.hidden, false);
    });

    test('category', () {
      expect(twoFerCommand.category, 'Easy');
    });
  });

  group('run', () {
    test('No args provided', () {
      expectLater(
          commandRunner.run(['two-fer']), throwsA(isA<UsageException>()));
    });
    test('More than 1 arg provided', () {
      expectLater(commandRunner.run(['two-fer', 'arg1', 'arg2']),
          throwsA(isA<UsageException>()));
    });
  });
}
