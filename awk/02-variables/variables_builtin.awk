BEGIN {
    # FS: Field Separator (default is whitespace)
    # Set it in BEGIN to affect all records
    FS = " "

    # OFS: Output Field Separator (default is a single space)
    OFS = " | "

    print "=== Employee Report ==="
    print "NR: record number, NF: number of fields per record"
    print ""
}

{
    # NR: current Record Number (line number across all files)
    # NF: Number of Fields in the current record
    # $0: the entire current record (line)
    # $1, $2, $3: individual fields

    printf "Record %d: %d fields -> %s\n", NR, NF, $0

    # OFS is used when you reassign $0 or use print with commas
    print $1, $2, $3
}

END {
    # NR at END holds the total number of records processed
    print ""
    print "Total records processed:", NR
}
