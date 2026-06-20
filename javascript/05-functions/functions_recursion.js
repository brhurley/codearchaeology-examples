// Factorial: n! = n * (n-1) * ... * 1
function factorial(n) {
  if (n <= 1) {
    return 1; // base case stops the recursion
  }
  return n * factorial(n - 1);
}

// Fibonacci sequence, also recursive
function fib(n) {
  if (n < 2) {
    return n;
  }
  return fib(n - 1) + fib(n - 2);
}

console.log("factorial(5) =", factorial(5));
console.log("factorial(0) =", factorial(0));
console.log("fib(10) =", fib(10));
