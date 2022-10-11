import 'package:args/command_runner.dart';

class AnagramCommand extends Command {
  @override
  String get description => '''
An anagram is a rearrangement of letters to form a new word. Given a word and a list of candidates, select the sublist of anagrams of the given word.

Given "listen" and a list of candidates like "enlists" "google" "inlets" "banana" the program should return a list containing "inlets".
''';

  @override
  String get name => 'anagram';
}
