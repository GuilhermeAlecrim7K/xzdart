import 'package:args/command_runner.dart';

import 'commands/commands.dart';

void start(List<String> args) {
  XzDartCommand().run(args);
}

class XzDartCommand extends CommandRunner {
  XzDartCommand() : super('xzdart', 'Solutions to Exercism\'s Dart exercises') {
    [
      AcronymCommand(),
      AllergiesCommand(),
      AnagramCommand(),
      ArmstrongNumbersCommand(),
      BeerSongCommand(),
      BinarySearchTreeCommand(),
      BobCommand(),
      CollatzConjectureCommand(),
      DartsCommand(),
      DiamondCommand(),
      DifferenceOfSquaresCommand(),
      ForthCommand(),
      GigaSecondCommand(),
      HammingCommand(),
      HelloWorldCommand(),
      IsbnVerifierCommand(),
      IsogramCommand(),
      LeapCommand(),
      LuhnCommand(),
      MatchingBracketsCommand(),
      MineSweeperCommand(),
      NthPrimeCommand(),
      PangramCommand(),
      PascalsTriangleCommand(),
      PrimeFactorsCommand(),
      RaindropsCommand(),
      ResistorColorCommand(),
      ResistorColorDuoCommand(),
      ReverseStringCommand(),
      RnaTranscriptionCommand(),
      RobotSimulatorCommand(),
      ScrabbleScoreCommand(),
      SecretHandshakeCommand(),
      SpaceAgeCommand(),
      TriangleCommand(),
      TwoFerCommand(),
      WordCountCommand(),
    ].forEach(addCommand);
  }
}
