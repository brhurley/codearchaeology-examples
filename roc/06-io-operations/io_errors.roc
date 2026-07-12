app [main!] { cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br" }

import cli.Stdout
import cli.File

main! = |_args|
    # read_utf8! returns a Result rather than throwing — we handle both cases
    result = File.read_utf8!("missing.txt")

    when result is
        Ok(contents) ->
            Stdout.line!("File says: ${contents}")

        Err(_) ->
            Stdout.line!("Could not read missing.txt — using a default value")
