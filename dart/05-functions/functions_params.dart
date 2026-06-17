// Arrow function: a single-expression body
int cube(int n) => n * n * n;

// Optional positional parameters use [ ] and need a default or nullable type
String greet(String name, [String greeting = 'Hello']) {
  return '$greeting, $name!';
}

// Named parameters use { }. 'required' forces the caller to provide one;
// others can have defaults.
double price({required double base, double taxRate = 0.0}) {
  return base + (base * taxRate);
}

void main() {
  print('cube(3) = ${cube(3)}');

  // Optional positional parameter omitted, then provided
  print(greet('World'));
  print(greet('Dart', 'Welcome'));

  // Named parameters can appear in any order
  print('Total: ${price(base: 100.0, taxRate: 0.08)}');
  print('Total: ${price(taxRate: 0.2, base: 50.0)}');
}
