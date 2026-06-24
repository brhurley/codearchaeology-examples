# Recursion: functions that call themselves

def factorial(n):
    """Compute n! recursively."""
    if n <= 1:           # base case stops the recursion
        return 1
    return n * factorial(n - 1)

def fibonacci(n):
    """Return the nth Fibonacci number (0-indexed)."""
    if n < 2:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)

print(factorial(5))                       # 5 * 4 * 3 * 2 * 1
print([fibonacci(i) for i in range(8)])   # first 8 Fibonacci numbers
