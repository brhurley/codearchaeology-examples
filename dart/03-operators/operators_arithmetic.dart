void main() {
  int a = 17;
  int b = 5;

  print('a + b = ${a + b}');   // Addition
  print('a - b = ${a - b}');   // Subtraction
  print('a * b = ${a * b}');   // Multiplication
  print('a / b = ${a / b}');   // Division (returns double)
  print('a ~/ b = ${a ~/ b}'); // Integer division
  print('a % b = ${a % b}');   // Modulo (remainder)

  // Unary operators
  int x = 10;
  print('-x = ${-x}'); // Negation

  // Increment and decrement
  int counter = 0;
  counter++;           // Post-increment
  ++counter;           // Pre-increment
  print('counter = $counter');
}
