BEGIN {
    # AWK variables need no declaration
    # Uninitialized variables are 0 (numeric) or "" (string)
    print "Uninitialized numeric:", unset_num + 0
    print "Uninitialized string: [" unset_str "]"

    # Assignment - AWK infers context automatically
    x = 42
    print "Integer:", x
    print "Integer as string length:", length(x)

    pi = 3.14159
    print "Float:", pi

    name = "AWK"
    print "String:", name

    # Numeric string: a string that looks like a number
    num_str = "100"
    print "Numeric string + 1:", num_str + 1
    print "Numeric string . \" items\":", num_str " items"

    # String concatenation: adjacent values (no operator needed)
    version = "AWK" " " "1977"
    print "Concatenated:", version

    # Arithmetic on a string yields 0
    word = "hello"
    print "String in arithmetic:", word + 5
}
