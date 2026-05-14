BEGIN {
    # Numeric comparison
    print "10 > 9       :", (10 > 9)
    print "10 == 10.0   :", (10 == 10.0)

    # String comparison (lexicographic)
    print "\"10\" > \"9\"   :", ("10" > "9")     # 0 (false): "1" < "9"
    print "\"abc\" < \"abd\" :", ("abc" < "abd")  # 1

    # Force numeric coercion with unary +
    s = "42"
    print "+s + 8       :", +s + 8

    # Force string coercion by concatenating empty string
    n = 100
    print "(n \"\") < \"99\":", ((n "") < "99")   # 1 (string compare)

    # Booleans are just numbers: 1 and 0
    result = (5 > 3)
    print "result of 5>3:", result
}
