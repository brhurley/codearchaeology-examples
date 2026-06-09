app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

# `|` combines alternatives; `_` is the catch-all pattern
day_type : U8 -> Str
day_type = |day|
    when day is
        6 | 7 -> "weekend"
        _ -> "weekday"

# A guard (`if`) refines a pattern with a boolean condition
classify : I64 -> Str
classify = |n|
    when n is
        0 -> "zero"
        _ if n < 0 -> "negative"
        _ if n < 10 -> "small"
        _ -> "large"

# Matching destructures a list into its head and the rest
first_word : List Str -> Str
first_word = |words|
    when words is
        [] -> "(empty)"
        [first, ..] -> first

main! = |_args|
    Stdout.line!(day_type(6))?
    Stdout.line!(day_type(3))?
    Stdout.line!(classify(-5))?
    Stdout.line!(classify(0))?
    Stdout.line!(classify(7))?
    Stdout.line!(classify(42))?
    Stdout.line!(first_word(["hello", "world"]))?
    Stdout.line!(first_word([]))
