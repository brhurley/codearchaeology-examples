"counted_loops.st - counting loops are messages sent to numbers"
| sum |

"timesRepeat: - repeat a block N times, no loop variable needed"
3 timesRepeat: [ 'Knock' displayNl ].

"to:do: - iterate an inclusive range, binding each value to :i"
1 to: 5 do: [ :i |
    Transcript show: 'Square of '; show: i printString;
        show: ' is '; show: (i * i) printString; cr ].

"to:by:do: - step by a custom increment"
Transcript show: 'Even numbers:'.
0 to: 10 by: 2 do: [ :i |
    Transcript show: ' '; show: i printString ].
Transcript cr.

"A negative step counts downward"
sum := 0.
10 to: 1 by: -1 do: [ :i | sum := sum + i ].
Transcript show: 'Sum 10 down to 1: '; show: sum printString; cr.
