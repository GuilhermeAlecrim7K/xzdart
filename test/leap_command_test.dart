import 'package:args/command_runner.dart';
import 'package:xzdart/main.dart';
import 'package:test/test.dart';

void main() {
  final commandRunner = XzDartCommand();
  group('Properties', () {
    final leapCommand = commandRunner.commands['leap']!;

    test('name', () {
      expect(leapCommand.name, 'leap');
    });

    test('takesArguments', () {
      expect(leapCommand.takesArguments, true);
    });

    test('hidden', () {
      expect(leapCommand.hidden, false);
    });

    test('category', () {
      expect(leapCommand.category, 'Easy');
    });
  });

  group('run', () {
    test('More than 1 arg provided', () {
      expectLater(commandRunner.run(['leap', '1998', '1999']),
          throwsA(isA<UsageException>()));
    });
    test('Non integer arg', () {
      expectLater(commandRunner.run(['leap', 'string']),
          throwsA(isA<UsageException>()));
      expectLater(
          commandRunner.run(['leap', '19.48']), throwsA(isA<UsageException>()));
    });
  });
}
