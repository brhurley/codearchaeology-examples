import 'dart:io';

void main() {
  final file = File('notes.txt');

  // Write text — creates the file, or overwrites it if it already exists
  file.writeAsStringSync('First line\nSecond line\n');

  // Append more text without erasing what's there
  file.writeAsStringSync('Third line\n', mode: FileMode.append);

  // Read the whole file back as one string
  String contents = file.readAsStringSync();
  print('--- File contents ---');
  stdout.write(contents);

  // Read the file as a list of lines
  List<String> lines = file.readAsLinesSync();
  print('The file has ${lines.length} lines.');

  // Clean up after ourselves
  file.deleteSync();
  print('File deleted: ${!file.existsSync()}');
}
