import 'package:xzdart/main.dart';
import 'package:test/test.dart';

void main() {
  final XzDartCommand xzdartCommandRunner = XzDartCommand();

  group('Commands', () {
    final xzdartCommands = xzdartCommandRunner.commands;

    test('length', () {
      expect(xzdartCommands.length, 38);
    });

    test('set', () {
      expect(xzdartCommands.keys.toSet(), {
        'help',
        'acronym',
        'allergies',
        'anagram',
        'armstrong-numbers',
        'beer-song',
        'bst',
        'bob',
        'collatz-conjecture',
        'darts',
        'diamond',
        'difference-of-squares',
        'forth',
        'gigasecond',
        'hamming',
        'hello-world',
        'isbn-verifier',
        'isogram',
        'leap',
        'luhn',
        'matching-brackets',
        'mine-sweeper',
        'nth-prime',
        'pangram',
        'pascals-triangle',
        'prime-factors',
        'raindrops',
        'resistor-color',
        'resistor-color-duo',
        'reverse-string',
        'rna-transcription',
        'robot-simulator',
        'scrabble-score',
        'secret-handshake',
        'space-age',
        'triangle',
        'two-fer',
        'word-count',
      });
    });
  });

  group('CommandRunner properties', () {
    test('description', () {
      expect(xzdartCommandRunner.description,
          'Solutions to Exercism\'s Dart exercises');
    });
    test('executableName', () {
      expect(xzdartCommandRunner.executableName, 'xzdart');
    });
    test('invocation', () {
      expect(xzdartCommandRunner.invocation, 'xzdart <command> [arguments]');
    });
  });
}
