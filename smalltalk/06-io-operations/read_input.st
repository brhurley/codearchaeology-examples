| name a b |
Transcript showCr: 'What is your name?'.
name := stdin nextLine.
Transcript showCr: 'Hello, ' , name , '!'.

Transcript showCr: 'Enter two numbers:'.
a := stdin nextLine asNumber.
b := stdin nextLine asNumber.
Transcript show: 'Their sum is '; showCr: (a + b) printString
