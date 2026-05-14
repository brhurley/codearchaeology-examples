BEGIN {
    # Exponentiation is right-associative
    print "2 ^ 3 ^ 2 =", 2 ^ 3 ^ 2     # 2^(3^2) = 512, not (2^3)^2 = 64

    # Multiplication before addition
    print "2 + 3 * 4 =", 2 + 3 * 4     # 14

    # Concatenation is lower than arithmetic but higher than comparison
    print "result: " 1 + 2             # "result: 3"

    # Use parentheses when in doubt — they are free
    print ((2 + 3) * 4)                # 20
    print (2 + 3 * 4)                  # 14
}
