import 'package:args/command_runner.dart';

class PascalsTriangleCommand extends Command {
  @override
  String get description => '''
Compute Pascal's triangle up to a given number of rows.

In Pascal's Triangle each number is computed by adding the numbers to the right and left of the current position in the previous row.
    1
   1 1
  1 2 1
 1 3 3 1
1 4 6 4 1
# ... etc
''';

  @override
  String get name => 'pascals-triangle';
}
