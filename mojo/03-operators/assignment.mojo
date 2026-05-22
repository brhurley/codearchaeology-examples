def main():
    var total: Int = 0
    total += 10
    total += 5
    total -= 3
    total *= 2
    print("total =", total)

    # Operator precedence: ** binds tighter than * which binds tighter than +
    var result: Int = 2 + 3 * 4 ** 2
    print("2 + 3 * 4 ** 2 =", result)

    # Parentheses change the grouping
    var grouped: Int = (2 + 3) * 4 ** 2
    print("(2 + 3) * 4 ** 2 =", grouped)

    # Boolean short-circuit: the right side is never evaluated when unnecessary
    var safe: Bool = total != 0 and (100 // total) > 0
    print("safe check:", safe)
