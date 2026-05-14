BEGIN {
    a = 17
    b = 5

    print "a =", a, " b =", b
    print "a + b =", a + b
    print "a - b =", a - b
    print "a * b =", a * b
    print "a / b =", a / b
    print "a % b =", a % b
    print "a ^ b =", a ^ b
    print "-a    =", -a

    # Division is always floating-point in AWK
    print "10 / 3 =", 10 / 3

    # Use int() to truncate toward zero
    print "int(10/3) =", int(10 / 3)
}
