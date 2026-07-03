import 'dart:io';

void main() {
  double pi = 3.14159265;

  // Fixed number of decimal places
  print('Pi to 2 places: ${pi.toStringAsFixed(2)}');

  // Build an aligned table with padding
  List<List<String>> rows = [
    ['Apple', '3'],
    ['Banana', '12'],
    ['Cherry', '150'],
  ];

  for (var row in rows) {
    String name = row[0].padRight(10);  // left-align in 10 columns
    String qty = row[1].padLeft(5);     // right-align in 5 columns
    print('$name|$qty');
  }

  // Convert numbers to other bases and pad with zeros
  int value = 42;
  print('Hex: ${value.toRadixString(16)}');
  print('Binary: ${value.toRadixString(2)}');
  print('Padded: ${value.toString().padLeft(6, '0')}');
}
