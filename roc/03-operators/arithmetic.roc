app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    a = 17
    b = 5

    # The basic operators work on numbers
    sum = a + b           # 22
    difference = a - b    # 12
    product = a * b       # 85

    # Integer division and remainder are functions, not symbols
    quotient = Num.div_trunc(a, b)   # 3
    remainder = Num.rem(a, b)        # 2

    # Exponentiation is also a function
    power = Num.pow_int(a, 2)        # 289

    # The / operator always produces a fraction
    fraction = 17.0 / 5.0            # 3.4

    Stdout.line!("a = ${Num.to_str(a)}, b = ${Num.to_str(b)}")?
    Stdout.line!("a + b              = ${Num.to_str(sum)}")?
    Stdout.line!("a - b              = ${Num.to_str(difference)}")?
    Stdout.line!("a * b              = ${Num.to_str(product)}")?
    Stdout.line!("Num.div_trunc(a,b) = ${Num.to_str(quotient)}")?
    Stdout.line!("Num.rem(a,b)       = ${Num.to_str(remainder)}")?
    Stdout.line!("Num.pow_int(a,2)   = ${Num.to_str(power)}")?
    Stdout.line!("17.0 / 5.0         = ${Num.to_str(fraction)}")
