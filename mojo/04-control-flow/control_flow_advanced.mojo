def main():
    # continue: skip values that don't match
    print("Even numbers under 10:")
    for i in range(10):
        if i % 2 != 0:
            continue
        print(i)

    # break: stop as soon as we find what we want
    print("First multiple of 7:")
    for n in range(1, 100):
        if n % 7 == 0:
            print("Found:", n)
            break

    # FizzBuzz: conditionals + loop working together
    print("FizzBuzz to 15:")
    for num in range(1, 16):
        if num % 15 == 0:
            print("FizzBuzz")
        elif num % 3 == 0:
            print("Fizz")
        elif num % 5 == 0:
            print("Buzz")
        else:
            print(num)
