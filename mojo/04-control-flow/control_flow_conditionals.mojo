def main():
    temperature = 72

    if temperature > 85:
        print("It's hot outside")
    elif temperature > 60:
        print("It's a pleasant day")
    elif temperature > 32:
        print("It's chilly")
    else:
        print("It's freezing")

    # Combine conditions with boolean operators
    is_weekend = True
    is_sunny = True
    if is_weekend and is_sunny:
        print("Time for a hike!")

    # Negation and 'or'
    has_umbrella = False
    if not has_umbrella or is_sunny:
        print("No need to worry about rain")
