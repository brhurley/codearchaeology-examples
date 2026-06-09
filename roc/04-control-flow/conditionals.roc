app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

# An `else if` chain handles more than two cases
sign : I64 -> Str
sign = |n|
    if n > 0 then
        "positive"
    else if n < 0 then
        "negative"
    else
        "zero"

main! = |_args|
    x = 7

    # Used inline, an `if` expression chooses between two values
    label = if Num.rem(x, 2) == 0 then "even" else "odd"
    Stdout.line!("${Num.to_str(x)} is ${label}")?

    # Both branches must produce the same type (here, an integer)
    bigger = if x > 5 then x else 5
    Stdout.line!("bigger value: ${Num.to_str(bigger)}")?

    Stdout.line!("sign of -3: ${sign(-3)}")?
    Stdout.line!("sign of 0:  ${sign(0)}")
