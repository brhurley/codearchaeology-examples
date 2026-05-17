class Buffer {
  final List<String> lines = [];

  void write(String s) => lines.add(s);
  void newline() => lines.add('\n');
  String render() => lines.join();
}

void main() {
  // Null-aware operators
  String? maybeName;
  String? givenName = 'Ada';

  // ?? — if-null: use the right side when left is null
  String displayA = maybeName ?? 'anonymous';
  String displayB = givenName ?? 'anonymous';
  print('displayA: $displayA');
  print('displayB: $displayB');

  // ?. — null-aware member access
  print('length of maybeName: ${maybeName?.length}'); // null
  print('length of givenName: ${givenName?.length}'); // 3

  // ??= — assign only if currently null
  String? title;
  title ??= 'Untitled';
  title ??= 'Ignored'; // Skipped: title is already set
  print('title: $title');

  // Cascade (..) — operate on the same object repeatedly
  var buffer = Buffer()
    ..write('first')
    ..newline()
    ..write('second');
  print(buffer.render());
}
