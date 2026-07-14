| out log in lineNumber |

"Open for writing: creates the file, or overwrites it if present."
out := FileStream open: 'quotes.txt' mode: FileStream write.
out nextPutAll: 'The best way to predict the future'; nl.
out nextPutAll: 'is to invent it.'; nl.
out close.

"Open for appending: new output lands at the end of the file."
log := FileStream open: 'quotes.txt' mode: FileStream append.
log nextPutAll: '-- Alan Kay'; nl.
log close.

"Open for reading and process the file line by line."
in := FileStream open: 'quotes.txt' mode: FileStream read.
lineNumber := 1.
[ in atEnd ] whileFalse: [
    Transcript show: lineNumber printString; show: ': '; showCr: in nextLine.
    lineNumber := lineNumber + 1 ].
in close
