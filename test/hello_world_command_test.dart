import 'package:xzdart/main.dart';
import 'package:test/test.dart';

void main() {
  group('Properties', () {
    final helloWorldCommand = XzDartCommand().commands['hello-world']!;

    test('name', () {
      expect(helloWorldCommand.name, 'hello-world');
    });

    test('takesArguments', () {
      expect(helloWorldCommand.takesArguments, false);
    });

    test('hidden', () {
      expect(helloWorldCommand.hidden, false);
    });

    test('category', () {
      expect(helloWorldCommand.category, 'Easy');
    });
  });
}
