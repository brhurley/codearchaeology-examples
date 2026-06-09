app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    numbers = [1, 2, 3, 4, 5, 6]

    # `List.map` transforms every element — no loop counter needed
    doubled = List.map(numbers, |x| x * 2)
    Stdout.line!("doubled = ${Inspect.to_str(doubled)}")?

    # `List.keep_if` keeps only the elements that satisfy a predicate
    evens = List.keep_if(numbers, |x| Num.rem(x, 2) == 0)
    Stdout.line!("evens   = ${Inspect.to_str(evens)}")?

    # `List.walk` folds the list into a single accumulated value
    total = List.walk(numbers, 0, |acc, x| acc + x)
    Stdout.line!("sum     = ${Num.to_str(total)}")
