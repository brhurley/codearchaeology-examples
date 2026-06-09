app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

# Recursion replaces a counting loop: each call reduces n toward the base case
factorial : U64 -> U64
factorial = |n|
    if n <= 1 then
        1
    else
        n * factorial(n - 1)

# A "while-style" accumulation, expressed as recursion
sum_to : U64 -> U64
sum_to = |n|
    if n == 0 then
        0
    else
        n + sum_to(n - 1)

# Build a countdown string by recursing toward the base case
countdown : U64 -> Str
countdown = |n|
    if n == 0 then
        "Liftoff!"
    else
        "${Num.to_str(n)} ${countdown(n - 1)}"

main! = |_args|
    Stdout.line!("5! = ${Num.to_str(factorial(5))}")?
    Stdout.line!("sum 1..100 = ${Num.to_str(sum_to(100))}")?
    Stdout.line!("countdown: ${countdown(5)}")
