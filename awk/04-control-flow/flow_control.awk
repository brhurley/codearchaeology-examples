BEGIN { FS = "," }

# Skip the header without falling through to later rules
NR == 1 { next }

{
    # Use break to exit a loop early
    for (i = 1; i <= NF; i++) {
        if ($i == "STOP") {
            stops++
            break
        }
    }

    # Use continue to skip the current iteration
    for (i = 1; i <= NF; i++) {
        if ($i == "")
            continue
        nonempty++
    }

    # switch (GNU AWK extension) — fall back to if/else for portability
    action = $2
    if (action == "ship") {
        shipped++
    } else if (action == "hold") {
        held++
    } else {
        other++
    }
}

END {
    print "stops:", stops+0
    print "nonempty fields:", nonempty
    print "shipped:", shipped, "held:", held, "other:", other+0
}
