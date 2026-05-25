app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    without_parens = 2 + 3 * 4     # 3 * 4 first, then + 2  -> 14
    with_parens = (2 + 3) * 4      # 2 + 3 first, then * 4  -> 20

    Stdout.line!("2 + 3 * 4   = ${Num.to_str(without_parens)}")?
    Stdout.line!("(2 + 3) * 4 = ${Num.to_str(with_parens)}")
