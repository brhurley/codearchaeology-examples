BEGIN {
    x = 10
    print "start    x =", x

    x += 5
    print "x += 5   x =", x

    x -= 3
    print "x -= 3   x =", x

    x *= 2
    print "x *= 2   x =", x

    x /= 4
    print "x /= 4   x =", x

    # Postfix returns old value, then increments
    y = 1
    print "post  y++ ->", y++, "after:", y

    # Prefix increments first, then returns
    z = 1
    print "pre  ++z ->", ++z, "after:", z

    # Uninitialized variables start at 0 (numeric) or "" (string)
    print "counter starts at:", counter
    counter++
    print "after counter++ :", counter
}
