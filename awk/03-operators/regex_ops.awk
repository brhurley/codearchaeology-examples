BEGIN {
    # Build sample data inline so we don't need an input file
    data[1] = "INFO  user logged in"
    data[2] = "ERROR disk full"
    data[3] = "WARN  cache miss"
    data[4] = "ERROR connection refused"
    data[5] = "INFO  request handled"

    for (i = 1; i <= 5; i++) {
        line = data[i]

        if (line ~ /^ERROR/)
            print "error  -> " line
        else if (line !~ /INFO/)
            print "other  -> " line
        else
            print "info   -> " line
    }

    # Regex operators also work in patterns at the top level (see below)
}

# These rules use ~ and !~ implicitly via /regex/ pattern shorthand
# /pattern/ alone is equivalent to:  $0 ~ /pattern/
