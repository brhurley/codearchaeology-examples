# Branching with if / elif / else
temperature = 72

if temperature > 85:
    print("It's hot outside")
elif temperature >= 60:
    print("The weather is pleasant")
else:
    print("Bring a jacket")

# Python evaluates "truthiness" — empty values are falsy
items = []
if items:
    print(f"You have {len(items)} items")
else:
    print("Your cart is empty")

# Comparison and logical operators combine cleanly
age = 25
has_ticket = True
if age >= 18 and has_ticket:
    print("Entry granted")

# Membership tests read like English
fruit = "apple"
if fruit in ("apple", "banana", "cherry"):
    print(f"{fruit} is in stock")
