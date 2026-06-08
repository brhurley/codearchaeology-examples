# A simple while loop
count = 3
while count > 0:
    print(f"T-minus {count}")
    count -= 1
print("Liftoff!")

# break and continue in action
print("Even numbers under 10, skipping 4:")
n = 0
while n < 10:
    n += 1
    if n == 4:
        continue        # skip 4
    if n % 2 != 0:
        continue        # skip odd numbers
    if n > 8:
        break           # stop once we pass 8
    print(n)
