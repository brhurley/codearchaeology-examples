void main() {
  // Switch statement
  String day = 'SAT';
  switch (day) {
    case 'SAT':
    case 'SUN':
      print('Weekend');
      break;
    default:
      print('Weekday');
  }

  // Switch expression (Dart 3) - returns a value
  int score = 85;
  String grade = switch (score ~/ 10) {
    10 || 9 => 'A',
    8 => 'B',
    7 => 'C',
    _ => 'F',
  };
  print('Grade: $grade');
}
