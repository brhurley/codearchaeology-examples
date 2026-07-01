# Send "age name" pairs into an external sort command
{
    print $2, $1 | "sort -n"
}

END {
    close("sort -n")
}
