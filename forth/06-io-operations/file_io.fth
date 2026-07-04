\ File I/O in Forth: write a file, then read it back

\ --- Writing ---
\ CREATE-FILE ( addr len fam -- fileid ior ); W/O = write-only
S" notes.txt" W/O CREATE-FILE ABORT" create failed"
CONSTANT out-file
\ WRITE-LINE writes a string plus a newline ( addr len fileid -- ior )
S" Forth reads and writes files" out-file WRITE-LINE DROP
S" using the ANS file word set"  out-file WRITE-LINE DROP
out-file CLOSE-FILE DROP

\ --- Reading it back ---
CREATE line-buf 256 ALLOT        \ buffer for one line at a time
S" notes.txt" R/O OPEN-FILE ABORT" open failed"
CONSTANT in-file

." --- notes.txt ---" CR
\ READ-LINE ( addr max fileid -- len flag ior )
\   flag is true while a line was read, false at end of file
BEGIN
    line-buf 256 in-file READ-LINE ABORT" read failed"
WHILE                            ( -- len ; loop while flag was true )
    line-buf SWAP TYPE CR        ( print the line just read )
REPEAT
DROP                             \ drop the leftover length at EOF

in-file CLOSE-FILE DROP
bye
