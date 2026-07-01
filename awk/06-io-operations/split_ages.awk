# Route each person to a file based on their age
$2 >= 30 { print $1 > "senior.txt" }
$2 <  30 { print $1 > "junior.txt" }

END {
    close("senior.txt")
    close("junior.txt")
    print "Wrote senior.txt and junior.txt"
}
