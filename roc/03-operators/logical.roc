app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

main! = |_args|
    age = 25
    has_ticket = Bool.true

    # 'and' is true only when both sides are true
    can_enter = age >= 18 and has_ticket

    # 'or' is true when at least one side is true
    free_day = Bool.false or Bool.true

    # Bool.not (or the ! prefix) inverts a boolean
    turned_away = Bool.not(can_enter)
    also_turned_away = !can_enter

    show = |b| if b then "Bool.true" else "Bool.false"

    Stdout.line!("age >= 18 and has_ticket -> ${show(can_enter)}")?
    Stdout.line!("Bool.false or Bool.true  -> ${show(free_day)}")?
    Stdout.line!("Bool.not(can_enter)      -> ${show(turned_away)}")?
    Stdout.line!("!can_enter               -> ${show(also_turned_away)}")
