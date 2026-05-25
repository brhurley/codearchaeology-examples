app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    x = 10
    y = 7

    eq = if x == y then "true" else "false"
    neq = if x != y then "true" else "false"
    lt = if x < y then "true" else "false"
    gt = if x > y then "true" else "false"
    lte = if x <= y then "true" else "false"
    gte = if x >= y then "true" else "false"

    Stdout.line!("x = ${Num.to_str(x)}, y = ${Num.to_str(y)}")?
    Stdout.line!("x == y -> ${eq}")?
    Stdout.line!("x != y -> ${neq}")?
    Stdout.line!("x < y  -> ${lt}")?
    Stdout.line!("x > y  -> ${gt}")?
    Stdout.line!("x <= y -> ${lte}")?
    Stdout.line!("x >= y -> ${gte}")
