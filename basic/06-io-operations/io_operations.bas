' I/O Operations in FreeBASIC

' --- Console output ---
PRINT "=== Console Output ==="
PRINT "Simple line"
PRINT "No newline"; " continued"
PRINT

' --- Formatted output ---
PRINT "=== Formatted Output ==="
DIM price AS DOUBLE = 19.5
PRINT USING "Price: $##.##"; price
PRINT USING "Count: ####"; 42
PRINT

' --- Writing to a file ---
DIM fnum AS INTEGER = FREEFILE
OPEN "data.txt" FOR OUTPUT AS #fnum
PRINT #fnum, "Alice,30"
PRINT #fnum, "Bob,25"
CLOSE #fnum

' --- Reading a file back line by line ---
PRINT "=== File Contents ==="
DIM line_text AS STRING
fnum = FREEFILE
OPEN "data.txt" FOR INPUT AS #fnum
DO WHILE NOT EOF(fnum)
    LINE INPUT #fnum, line_text
    PRINT line_text
LOOP
CLOSE #fnum
