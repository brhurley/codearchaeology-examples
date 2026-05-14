BEGIN {
    first = "Hello"
    second = "World"

    # Adjacency = concatenation
    greeting = first " " second "!"
    print greeting

    # Mixing numbers and strings — AWK auto-coerces
    n = 42
    label = "answer=" n
    print label

    # Concatenation has LOWER precedence than arithmetic
    # so this works as you'd expect:
    print "sum is " 2 + 3        # "sum is 5"

    # But beware: concatenation is left-associative and tighter than comparison
    a = 1
    b = 2
    # (a b) becomes "12", then compared against "3"
    print "a b > 3 :", (a b > 3)
}
