/* File I/O in REXX: write records, then read them back */

datafile = "inventory.txt"

/* Open for writing, replacing any existing content */
call stream datafile, "c", "open write replace"

call lineout datafile, "Widgets,42"
call lineout datafile, "Gadgets,17"
call lineout datafile, "Gizmos,8"

call stream datafile, "c", "close"
say "Wrote 3 records to" datafile

/* Reopen for reading and process each line */
call stream datafile, "c", "open read"

total = 0
say "Inventory:"
do while lines(datafile) > 0
    parse value linein(datafile) with name "," quantity
    say "  " || left(name, 10) || right(quantity, 4)
    total = total + quantity
end

call stream datafile, "c", "close"
say "Total items:" total
