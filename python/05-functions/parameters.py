# Default, keyword, and variadic parameters

def power(base, exponent=2):
    """Raise base to exponent; exponent defaults to 2 (square)."""
    return base ** exponent

print(power(5))                   # uses the default exponent of 2
print(power(2, 10))               # positional arguments
print(power(base=3, exponent=3))  # keyword arguments, explicit and clear

def describe(*args, **kwargs):
    """Accept any number of positional and keyword arguments."""
    print("positional:", args)
    print("keyword:", kwargs)

describe(1, 2, 3, name="Python", year=1991)
