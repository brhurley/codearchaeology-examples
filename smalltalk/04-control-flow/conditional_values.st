"conditional_values.st - conditionals return the value of the chosen block"
| score grade number label |

score := 73.

"Smalltalk's ternary: assign the result of ifTrue:ifFalse:"
label := score >= 60
    ifTrue: [ 'pass' ]
    ifFalse: [ 'fail' ].
Transcript show: 'Result: '; show: label; cr.

"Multi-way branching: there is no switch statement, so nest
 conditionals to classify a value into ranges."
grade := score >= 90
    ifTrue: [ 'A' ]
    ifFalse: [ score >= 80
        ifTrue: [ 'B' ]
        ifFalse: [ score >= 70
            ifTrue: [ 'C' ]
            ifFalse: [ 'F' ] ] ].
Transcript show: 'Grade: '; show: grade; cr.

"Booleans come from any predicate message, such as odd"
number := 7.
label := number odd ifTrue: [ 'odd' ] ifFalse: [ 'even' ].
Transcript show: number printString; show: ' is '; show: label; cr.
