void main() {
  int temperature = 18;

  // Classic if / else if / else
  if (temperature > 30) {
    print('It is hot');
  } else if (temperature >= 15) {
    print('It is mild');
  } else {
    print('It is cold');
  }

  // Ternary conditional expression: condition ? valueIfTrue : valueIfFalse
  String label = temperature >= 15 ? 'comfortable' : 'chilly';
  print('Today is $label');

  // Null-aware ?? operator: use the right side when the left is null
  String? nickname;
  print('Hello, ${nickname ?? 'guest'}');
}
