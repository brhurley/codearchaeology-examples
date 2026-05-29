BEGIN { FS = "," }
NR == 1 { next }
{
    # C-style for: walk every field on this record
    for (i = 1; i <= NF; i++) {
        printf "  field %d: %s\n", i, $i
    }

    # while loop: countdown using the amount field
    n = $3 + 0
    while (n > 0 && n >= 100) {
        n -= 50
    }
    printf "  remainder of %s after draining: %d\n", $3, n

    # do-while: runs the body at least once
    tries = 0
    do {
        tries++
    } while (tries < 2)
    printf "  tries=%d\n", tries

    print "---"
}
