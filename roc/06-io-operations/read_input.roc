app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout
import cli.Stdin

main! = |_args|
    Stdout.line!("What is your name?")?
    name = Stdin.line!({})?

    Stdout.line!("What is your favorite language?")?
    language = Stdin.line!({})?

    Stdout.line!("Nice to meet you, ${name}!")?
    Stdout.line!("${language} is a great choice!")
