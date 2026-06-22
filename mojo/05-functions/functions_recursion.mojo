# Classic recursive factorial: n! = n * (n-1)!
fn factorial(n: Int) -> Int:
    if n <= 1:
        return 1
    return n * factorial(n - 1)

# Recursive Fibonacci: each number is the sum of the previous two
fn fibonacci(n: Int) -> Int:
    if n < 2:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)

def main():
    print("Factorials:")
    for i in range(1, 7):
        print(i, "! =", factorial(i))

    print("First 10 Fibonacci numbers:")
    for i in range(10):
        print(fibonacci(i), end=" ")
    print()
