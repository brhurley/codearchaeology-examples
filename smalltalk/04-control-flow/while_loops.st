"while_loops.st - condition-controlled iteration via whileTrue:/whileFalse:"
| count factorial n |

"whileTrue: - the receiver block is the condition, the argument is the body"
count := 1.
[ count <= 5 ] whileTrue: [
    Transcript show: 'Count: '; show: count printString; cr.
    count := count + 1 ].

"whileFalse: - loops as long as the condition block answers false"
n := 10.
[ n <= 0 ] whileFalse: [
    n := n - 3 ].
Transcript show: 'n ended at: '; show: n printString; cr.

"A classic accumulator loop: compute 5 factorial"
factorial := 1.
count := 1.
[ count <= 5 ] whileTrue: [
    factorial := factorial * count.
    count := count + 1 ].
Transcript show: '5! = '; show: factorial printString; cr.
