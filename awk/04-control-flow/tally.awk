BEGIN { FS = "," }
NR == 1 { next }
{
    # Tally counts and sums per action type
    count[$2]++
    total[$2] += $3
}
END {
    # for-in iterates the keys of the array
    for (action in count) {
        printf "%-5s n=%d sum=%d\n", action, count[action], total[action]
    }
}
