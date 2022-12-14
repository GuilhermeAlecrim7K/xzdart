import 'package:args/command_runner.dart';

class BeerSongCommand extends Command {
  @override
  String get description => '''
Recite the lyrics to that beloved classic, that field-trip favorite: 99 Bottles of Beer on the Wall.

Note that not all verses are identical.

"(n) bottles of beer on the wall. (n) bottles of beer. Take one down, pass it around, (n-1) bottles of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."

For bonus points
Did you get the tests passing and the code clean? If you want to, these are some additional things you could try:

Remove as much duplication as you possibly can.
Optimize for readability, even if it means introducing duplication.
If you've removed all the duplication, do you have a lot of conditionals? Try replacing the conditionals with polymorphism, if it applies in this language. How readable is it?
Then please share your thoughts in a comment on the submission. Did this experiment make the code better? Worse? Did you learn anything from it?
''';

  @override
  String get name => 'beer-song';
}
