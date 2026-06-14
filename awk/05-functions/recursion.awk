# Recursion in AWK
function factorial(n) {
    if (n <= 1)
        return 1
    return n * factorial(n - 1)
}

function fib(n) {
    if (n < 2)
        return n
    return fib(n - 1) + fib(n - 2)
}

BEGIN {
    print "5! =", factorial(5)
    print "10! =", factorial(10)
    print "First 10 Fibonacci numbers:"
    for (i = 0; i < 10; i++)
        printf "%d ", fib(i)
    print ""
}
