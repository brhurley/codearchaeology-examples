void main() {
  // Compound assignment
  int total = 10;
  total += 5;   // total = total + 5
  total -= 2;   // total = total - 2
  total *= 3;   // total = total * 3
  total ~/= 4;  // Integer divide-and-assign
  print('total = $total');

  // String concatenation vs interpolation
  String first = 'Hello';
  String second = 'Dart';
  String concat = first + ', ' + second + '!';
  String interp = '$first, $second!';
  print(concat);
  print(interp);

  // String repetition with *
  String line = '-' * 20;
  print(line);

  // Ternary conditional expression
  int score = 75;
  String grade = score >= 60 ? 'pass' : 'fail';
  print('grade: $grade');
}
