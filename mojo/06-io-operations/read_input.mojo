def main():
    print("Enter your name:")
    var name = input()
    print("Hello,", name)

    print("Enter the year you were born:")
    var year_text = input()

    # input() always returns a String; convert it to an Int with atol()
    var birth_year = atol(year_text)
    print("In 2026 you will turn", 2026 - birth_year)
