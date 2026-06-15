import Core library "io";

// Classic recursive factorial.
fn Factorial(n: i32) -> i32 {
  if (n <= 1) {
    return 1;
  }
  return n * Factorial(n - 1);
}

// Recursive Fibonacci.
fn Fibonacci(n: i32) -> i32 {
  if (n < 2) {
    return n;
  }
  return Fibonacci(n - 1) + Fibonacci(n - 2);
}

fn Run() {
  Core.PrintStr("5! = ");
  Core.Print(Factorial(5));
  Core.PrintStr("Fibonacci(10) = ");
  Core.Print(Fibonacci(10));
}
