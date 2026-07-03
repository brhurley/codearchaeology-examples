import 'dart:io';

void main() {
  // print() always appends a newline
  print('Standard output with print()');

  // stdout.write() does NOT append a newline
  stdout.write('No newline here... ');
  stdout.write('same line!\n');

  // writeln() writes its argument followed by a newline
  stdout.writeln('Written with writeln()');

  // stderr is a separate stream reserved for error/diagnostic output
  stderr.writeln('This goes to standard error');

  // writeAll() joins an iterable with a separator
  stdout.writeAll(['a', 'b', 'c'], '-');
  stdout.writeln();
}
