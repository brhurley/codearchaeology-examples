app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    # Bindings with type inference - the compiler figures out each type
    language = "Roc"
    version = 4
    pi = 3.14159

    # Explicit type annotations are optional; they go on a separate line
    creator : Str
    creator = "Richard Feldman"

    year_created : I32
    year_created = 2019

    # Sized integer types - pick the smallest type that fits your range
    small : I8
    small = 42

    big : I64
    big = 9_000_000_000

    # Floating-point and fixed-point numbers
    temperature : F64
    temperature = 72.5

    # String interpolation uses ${} - works with any expression
    Stdout.line!("Language: ${language}")?
    Stdout.line!("Creator: ${creator}")?
    Stdout.line!("Year created: ${Num.to_str(year_created)}")?
    Stdout.line!("Version: alpha${Num.to_str(version)}")?
    Stdout.line!("Pi: ${Num.to_str(pi)}")?
    Stdout.line!("Small (I8): ${Num.to_str(small)}")?
    Stdout.line!("Big (I64): ${Num.to_str(big)}")?
    Stdout.line!("Temperature (F64): ${Num.to_str(temperature)}")
