import 'dart:io';

void main() {
  final file = File('does_not_exist.txt');

  try {
    String contents = file.readAsStringSync();
    print(contents);
  } on PathNotFoundException catch (e) {
    // Catch the specific failure we expect
    print('Could not read file: ${e.path}');
  } catch (e) {
    // Catch anything else
    print('Unexpected error: $e');
  }

  // Alternatively, check before acting
  if (file.existsSync()) {
    print('File exists.');
  } else {
    print('File does not exist, skipping read.');
  }
}
