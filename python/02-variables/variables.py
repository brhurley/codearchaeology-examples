# Variables and Types in Python

# --- Variable Assignment ---
# No type declaration needed - just assign a value
message = "Hello, Python"
count = 42
temperature = 98.6
is_active = True

print("=== Basic Variables ===")
print(f"message = {message}")
print(f"count = {count}")
print(f"temperature = {temperature}")
print(f"is_active = {is_active}")

# Variables can be reassigned to a different type
count = "forty-two"
print(f"\ncount after reassignment = {count}")
print(f"count is now a {type(count).__name__}")

# Multiple assignment
x, y, z = 10, 20, 30
print(f"\nx, y, z = {x}, {y}, {z}")

# Same value assigned to multiple names
a = b = c = 0
print(f"a = b = c = {a}")

# --- Built-in Types ---
print("\n=== Built-in Types ===")

# Integers - arbitrary precision (no overflow)
small = 255
big = 10 ** 20
print(f"small: {small} (type: {type(small).__name__})")
print(f"big: {big} (type: {type(big).__name__})")

# Floats - IEEE 754 double precision
pi = 3.14159
scientific = 2.998e8
print(f"pi: {pi} (type: {type(pi).__name__})")
print(f"scientific: {scientific} (type: {type(scientific).__name__})")

# Strings - immutable sequences of characters
single = 'single quotes'
double = "double quotes"
multi = """triple quotes
span multiple lines"""
print(f"single: {single}")
print(f"double: {double}")
print(f"multi: {multi}")

# Booleans - subclass of int
flag = True
print(f"\nflag: {flag} (type: {type(flag).__name__})")
print(f"True + True = {True + True}")  # Booleans are integers

# NoneType - Python's null
nothing = None
print(f"nothing: {nothing} (type: {type(nothing).__name__})")

# --- Collections Preview ---
print("\n=== Collection Types ===")

# List - ordered, mutable
fruits = ["apple", "banana", "cherry"]
print(f"list: {fruits} (type: {type(fruits).__name__})")

# Tuple - ordered, immutable
point = (3, 4)
print(f"tuple: {point} (type: {type(point).__name__})")

# Dictionary - key-value pairs
person = {"name": "Ada", "age": 36}
print(f"dict: {person} (type: {type(person).__name__})")

# Set - unordered, unique elements
unique = {1, 2, 3, 2, 1}
print(f"set: {unique} (type: {type(unique).__name__})")

# --- Type Conversions ---
print("\n=== Type Conversions ===")

# Explicit conversions using built-in functions
num_str = "42"
num_int = int(num_str)
num_float = float(num_str)
print(f'int("42") = {num_int} (type: {type(num_int).__name__})')
print(f'float("42") = {num_float} (type: {type(num_float).__name__})')

# Number to string
value = 3.14
value_str = str(value)
print(f"str(3.14) = '{value_str}' (type: {type(value_str).__name__})")

# Boolean conversions - "truthy" and "falsy" values
print(f"\nbool(1) = {bool(1)}")
print(f"bool(0) = {bool(0)}")
print(f'bool("") = {bool("")}')
print(f'bool("hello") = {bool("hello")}')
print(f"bool([]) = {bool([])}")
print(f"bool([1]) = {bool([1])}")
print(f"bool(None) = {bool(None)}")

# --- Type Checking ---
print("\n=== Type Checking ===")

# type() returns the exact type
print(f"type(42) = {type(42)}")
print(f"type(3.14) = {type(3.14)}")

# isinstance() checks type hierarchy (preferred for checking)
print(f"isinstance(True, bool) = {isinstance(True, bool)}")
print(f"isinstance(True, int) = {isinstance(True, int)}")  # bool is subclass of int

# --- Constants Convention ---
print("\n=== Constants (Convention) ===")

# Python has no true constants - UPPER_CASE is a convention
MAX_RETRIES = 3
PI = 3.14159265358979
BASE_URL = "https://api.example.com"
print(f"MAX_RETRIES = {MAX_RETRIES}")
print(f"PI = {PI}")
print(f"BASE_URL = {BASE_URL}")
print("(These are conventions - Python won't prevent reassignment)")
