# Reading input from standard input

# input() prints its prompt, then returns whatever the user types (as a string)
name = input("Enter your name: ")
print(f"Hello, {name}!")

# Convert to int() because input() always returns a string
age = int(input("Enter your age: "))
print(f"Next year you will be {age + 1}")
