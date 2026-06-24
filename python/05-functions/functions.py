# Defining and calling functions in Python

def greet(name):
    """Return a friendly greeting for the given name."""
    return f"Hello, {name}!"

def add(a, b):
    """Return the sum of two numbers."""
    return a + b

# Call the functions and use their return values
message = greet("Ada")
print(message)
print(add(3, 4))

# A function with no explicit return yields None
def announce(text):
    print(f">> {text}")

result = announce("Functions are first-class in Python")
print(result)
