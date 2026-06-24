# Higher-order functions, lambdas, and closures

def apply_twice(func, value):
    """Apply a function to a value two times."""
    return func(func(value))

double = lambda x: x * 2
print(apply_twice(double, 5))   # double(double(5))

# map and filter both take a function as their first argument
numbers = [1, 2, 3, 4, 5, 6]
squares = list(map(lambda n: n ** 2, numbers))
evens = list(filter(lambda n: n % 2 == 0, numbers))
print(squares)
print(evens)

# A closure: make_multiplier returns a function that remembers `factor`
def make_multiplier(factor):
    def multiplier(n):
        return n * factor
    return multiplier

triple = make_multiplier(3)
print(triple(10))
