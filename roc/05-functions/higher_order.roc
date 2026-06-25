app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

# A higher-order function: `f` is itself a function.
# apply_twice runs f on x, then runs f again on the result.
apply_twice = |f, x|
    f(f(x))

double = |n|
    n * 2

main! = |_args|
    # Pass a named function (double) as an argument.
    quadrupled = apply_twice(double, 5)

    # Pass a closure. add_step captures `step` from this scope.
    step = 10
    add_step = |n| n + step
    stepped = apply_twice(add_step, 0)

    # List.map applies a function to every element, returning a new list.
    # Here we map an inline closure over a list of names, then join them.
    shouted =
        ["ada", "alan", "grace"]
        |> List.map(|name| "${name}!")
        |> Str.join_with(", ")

    report =
        [
            "apply_twice(double, 5)   = ${Num.to_str(quadrupled)}",
            "apply_twice(add_step, 0) = ${Num.to_str(stepped)}",
            "shouted                  = ${shouted}",
        ]
        |> Str.join_with("\n")

    Stdout.line!(report)
