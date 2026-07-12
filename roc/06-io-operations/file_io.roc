app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout
import cli.File

main! = |_args|
    contents = "Roc makes I/O effects explicit.\nEvery effectful function ends with !\n"

    # Write the string to a file, creating or overwriting it
    File.write_utf8!("notes.txt", contents)?
    Stdout.line!("Wrote notes.txt")?

    # Read the file back into a string
    loaded = File.read_utf8!("notes.txt")?
    Stdout.line!("File contents:")?

    # loaded already ends in a newline, so use write! to avoid a blank line
    Stdout.write!(loaded)
