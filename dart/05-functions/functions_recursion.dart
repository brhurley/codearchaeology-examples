// Factorial: n! = n * (n-1)!  with a base case of 0! = 1
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// Fibonacci: each number is the sum of the two before it
int fibonacci(int n) {
  if (n < 2) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print('5! = ${factorial(5)}');
  print('10! = ${factorial(10)}');

  // Print the first 10 Fibonacci numbers
  var sequence = <int>[];
  for (var i = 0; i < 10; i++) {
    sequence.add(fibonacci(i));
  }
  print('Fibonacci: $sequence');
}
