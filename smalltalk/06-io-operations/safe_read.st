| f out |

"ifFail: supplies a fallback value instead of halting the program."
f := FileStream open: 'missing.txt' mode: FileStream read ifFail: [ nil ].
f isNil
    ifTrue: [ Transcript showCr: 'Could not open missing.txt' ]
    ifFalse: [ Transcript showCr: f nextLine. f close ].

"ensure: guarantees cleanup - the close runs no matter what."
out := FileStream open: 'notes.txt' mode: FileStream write.
[ out nextPutAll: 'written safely'; nl ] ensure: [ out close ].
Transcript showCr: 'File written and closed'
