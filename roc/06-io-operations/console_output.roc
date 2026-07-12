app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    # write! prints without a trailing newline, so these join on one line
    Stdout.write!("Loading")?
    Stdout.write!("...")?
    Stdout.line!(" done!")?

    # String interpolation with ${...} formats values into text
    name = "Roc"
    version = 4
    Stdout.line!("Language: ${name}")?
    Stdout.line!("Alpha release: ${Num.to_str(version)}")?

    # Fractional literals default to Dec, so this prints exactly
    pi = 3.14159
    Stdout.line!("Pi is about ${Num.to_str(pi)}")
