# BEGIN runs once, before any input is read
BEGIN {
    printf "%-8s %-4s %s\n", "NAME", "AGE", "ROLE"
    print "-----------------------"
}

# This block runs for every input record (line)
{
    printf "%-8s %-4s %s\n", $1, $2, $3
}

# END runs once, after all input is consumed
END {
    print "-----------------------"
    print "Total records:", NR
}
