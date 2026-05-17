void main() {
  int x = 10;
  int y = 20;

  // Comparison operators
  print('x == y: ${x == y}');
  print('x != y: ${x != y}');
  print('x < y:  ${x < y}');
  print('x > y:  ${x > y}');
  print('x <= y: ${x <= y}');
  print('x >= y: ${x >= y}');

  // Logical operators
  bool inRange = x > 0 && x < 100;
  bool isEdge = x == 0 || x == 100;
  bool negated = !inRange;

  print('inRange: $inRange');
  print('isEdge:  $isEdge');
  print('negated: $negated');

  // Type checking with 'is' and 'is!'
  Object value = 'Dart';
  print('value is String: ${value is String}');
  print('value is! int:   ${value is! int}');
}
