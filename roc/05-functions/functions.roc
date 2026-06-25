app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

# A function is a name bound to a lambda: |params| body.
# The body's value is returned automatically — no `return` keyword.
add = |a, b|
    a + b

# Type annotations are optional. This one reads:
# multiply takes two I64 values and returns an I64.
multiply : I64, I64 -> I64
multiply = |a, b|
    a * b

# Functions can return any type. This one returns a Str
# built with ${...} string interpolation.
greet = |name|
    "Hello, ${name}!"

# Recursion replaces loops in functional code.
# factorial calls itself until n reaches 0.
factorial : U64 -> U64
factorial = |n|
    if n == 0 then
        1
    else
        n * factorial(n - 1)

main! = |_args|
    # Calling a function wraps its arguments in parentheses.
    sum = add(3, 4)
    product = multiply(6, 7)
    greeting = greet("Roc")

    # The pipe operator |> passes the left value as the FIRST
    # argument of the next call: 5 |> multiply(2) is multiply(5, 2).
    doubled = 5 |> multiply(2)

    report =
        [
            "add(3, 4)        = ${Num.to_str(sum)}",
            "multiply(6, 7)   = ${Num.to_str(product)}",
            "5 |> multiply(2) = ${Num.to_str(doubled)}",
            "greet(\"Roc\")     = ${greeting}",
            "factorial(5)     = ${Num.to_str(factorial(5))}",
        ]
        |> Str.join_with("\n")

    Stdout.line!(report)
