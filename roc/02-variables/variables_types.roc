app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout

# Type alias for a record shape
Person : { name : Str, age : U32, email : Str }

# Tagged union type alias - a value is exactly one of these variants
AccountStatus : [Active, Suspended, Closed]

main! = |_args|
    # A record literal
    alice : Person
    alice = { name: "Alice", age: 30, email: "alice@example.com" }

    # Field access uses dot notation
    greeting = "Hello, ${alice.name}!"

    # Record update syntax creates a NEW record with some fields changed
    # (the original is untouched - everything is immutable)
    alice_older = { alice & age: 31 }

    # A tagged union value
    status : AccountStatus
    status = Active

    # Pattern matching with `when ... is` extracts the variant
    status_text =
        when status is
            Active -> "active"
            Suspended -> "suspended"
            Closed -> "closed"

    # Tagged unions can carry data - here's how Roc handles absence without null
    nickname : [Some Str, None]
    nickname = Some("Roci")

    nickname_text =
        when nickname is
            Some(n) -> n
            None -> "(no nickname set)"

    # Result is a built-in tagged union for operations that may fail
    parsed : Result I64 [InvalidNumber]
    parsed = Ok(42)

    parsed_text =
        when parsed is
            Ok(value) -> "parsed ${Num.to_str(value)}"
            Err(InvalidNumber) -> "could not parse"

    Stdout.line!(greeting)?
    Stdout.line!("Age today: ${Num.to_str(alice.age)}")?
    Stdout.line!("Age next year: ${Num.to_str(alice_older.age)}")?
    Stdout.line!("Email: ${alice.email}")?
    Stdout.line!("Status: ${status_text}")?
    Stdout.line!("Nickname: ${nickname_text}")?
    Stdout.line!("Parsed: ${parsed_text}")
