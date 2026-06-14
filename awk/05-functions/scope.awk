# Variable scope in AWK
# Globals are visible everywhere; parameters are local to the function.
# Convention: extra "parameters" (after the real ones) act as local variables.

function add_tax(amount,    rate, result) {
    rate = 0.08          # local - listed as an extra parameter
    result = amount + amount * rate
    return result
}

function bump_total() {
    total += 10          # global - not a parameter, shared across calls
}

BEGIN {
    total = 0
    bump_total()
    bump_total()
    print "Total (global):", total
    print "Price with tax:", add_tax(100)
    print "rate outside function:", (rate == "" ? "undefined" : rate)
}
