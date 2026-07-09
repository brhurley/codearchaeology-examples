iofile ; File I/O - write lines to a file, then read them back
 set file="/app/notes.txt"
 ;
 ; --- Write three lines to the file ---
 ; NEWVERSION creates the file, truncating any existing content
 open file:(newversion)
 use file
 write "First line",!
 write "Second line",!
 write "Third line",!
 use $principal
 close file
 write "Wrote 3 lines to ",file,!
 ;
 ; --- Read the file back one line at a time ---
 open file:(readonly)
 set count=0
 for  use file read line quit:$zeof  set count=count+1 use $principal write "Line ",count,": ",line,!
 use $principal
 close file
 write "Read ",count," lines total.",!
 quit
