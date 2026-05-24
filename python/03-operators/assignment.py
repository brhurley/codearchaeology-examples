# Augmented assignment operators
total = 100
total += 50      # total = total + 50
print("after += 50 :", total)
total -= 30
print("after -= 30 :", total)
total *= 2
print("after *= 2  :", total)
total //= 7
print("after //= 7 :", total)
total **= 2
print("after **= 2 :", total)

# Strings: + concatenates, * repeats
greeting = "Hi" + ", " + "Python"
print(greeting)
print("=" * 20)

# Walrus operator (:=) assigns within an expression (Python 3.8+)
if (n := len(greeting)) > 5:
    print("greeting has", n, "characters")
