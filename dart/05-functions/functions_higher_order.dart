// A higher-order function: it takes another function as a parameter.
List<int> applyToAll(List<int> items, int Function(int) transform) {
  return items.map(transform).toList();
}

// A function that returns a function (a function factory)
int Function(int) multiplier(int factor) {
  return (int x) => x * factor;
}

void main() {
  var numbers = [1, 2, 3, 4, 5];

  // Pass a named function as an argument
  int double(int n) => n * 2;
  print('Doubled: ${applyToAll(numbers, double)}');

  // Pass an anonymous function (lambda) directly
  print('Squared: ${applyToAll(numbers, (n) => n * n)}');

  // Build a specialized function and use it
  var triple = multiplier(3);
  print('Tripled: ${applyToAll(numbers, triple)}');

  // Built-in higher-order methods
  var evens = numbers.where((n) => n.isEven).toList();
  var sum = numbers.reduce((a, b) => a + b);
  print('Evens: $evens');
  print('Sum: $sum');
}
