#include <iostream>

// Recursive factorial: n! = n * (n-1)!
int factorial(int n) {
    if (n <= 1) {       // base case stops the recursion
        return 1;
    }
    return n * factorial(n - 1);
}

// Recursive Fibonacci: fib(n) = fib(n-1) + fib(n-2)
int fibonacci(int n) {
    if (n < 2) {        // base cases: fib(0) = 0, fib(1) = 1
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int main() {
    int count = 5;      // local variable, scoped to main()
    std::cout << "factorial(" << count << ") = " << factorial(count) << std::endl;
    std::cout << "fibonacci(10) = " << fibonacci(10) << std::endl;
    return 0;
}
