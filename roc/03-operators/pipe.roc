app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    # Without the pipe: nested calls must be read inside-out
    nested = Num.to_str(Num.sub(Num.mul(Num.add(10, 5), 2), 6))

    # With the pipe: data flows left to right
    # x |> f(y) is the same as f(x, y)
    piped_num =
        10
        |> Num.add(5)    # Num.add(10, 5) = 15
        |> Num.mul(2)    # Num.mul(15, 2) = 30
        |> Num.sub(6)    # Num.sub(30, 6) = 24
    piped = Num.to_str(piped_num)

    Stdout.line!("Nested calls: ${nested}")?
    Stdout.line!("Piped chain:  ${piped}")
