def main():
    score = 78
    result = "pass" if score >= 60 else "fail"
    print("Result:", result)

    # Ternaries can feed directly into other expressions
    count = 1
    label = "item" if count == 1 else "items"
    print(count, label)

    # Nesting works, but keep it readable
    number = 0
    sign = "positive" if number > 0 else "negative" if number < 0 else "zero"
    print("The number is", sign)
