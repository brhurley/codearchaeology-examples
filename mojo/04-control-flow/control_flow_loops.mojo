def main():
    # While loop: repeat until a condition becomes false
    countdown = 5
    while countdown > 0:
        print("T-minus", countdown)
        countdown -= 1
    print("Liftoff!")

    # For loop over a range (start inclusive, end exclusive)
    print("Squares:")
    for i in range(1, 6):
        print(i, "squared is", i * i)

    # Range with a step value
    print("Even numbers:")
    for n in range(0, 10, 2):
        print(n)
