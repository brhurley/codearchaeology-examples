BEGIN {
    age = 25
    has_license = 1

    if (age >= 18 && has_license)
        print "Eligible to drive"

    if (age < 13 || age > 65)
        print "Discount applies"
    else
        print "Standard fare"

    # Short-circuit: right side not evaluated if left determines result
    x = 0
    if (x != 0 && (10 / x) > 1)
        print "won't divide by zero — short-circuited"
    else
        print "safely skipped division"

    # Truthiness of values
    print "!0     =", !0       # 1
    print "!\"\"   =", !""     # 1
    print "!\"0\"  =", !"0"    # 0  (non-empty string is truthy!)
    print "!1     =", !1       # 0
}
