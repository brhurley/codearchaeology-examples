# Formatted console output in Python

name = "Ada"
age = 36

# f-strings (Python 3.6+) are the modern, readable way to interpolate values
print(f"Name: {name}, Age: {age}")

# Number formatting inside f-strings uses a colon and a format spec
pi = 3.14159265
print(f"Pi rounded: {pi:.2f}")
print(f"Zero-padded: {age:05d}")

# The older str.format() method still works and reads the same way
print("Name: {}, Age: {}".format(name, age))

# print() accepts sep= to join its arguments and end= to replace the newline
print("a", "b", "c", sep="-")
print("no newline here", end=" >>> ")
print("same line")
