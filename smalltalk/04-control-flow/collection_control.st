"collection_control.st - iteration messages replace manual loops"
| numbers firstEven names |

numbers := #(3 7 2 8 5 10).

"do: visits every element - the workhorse iterator"
Transcript show: 'All numbers:'.
numbers do: [ :each | Transcript show: ' '; show: each printString ].
Transcript cr.

"detect:ifNone: returns the first matching element and stops searching -
 the idiomatic way to 'break' out as soon as you find what you want"
firstEven := numbers detect: [ :each | each even ] ifNone: [ nil ].
Transcript show: 'First even number: '; show: firstEven printString; cr.

"select: keeps elements that satisfy the block (filter)"
Transcript show: 'Evens: '; show: (numbers select: [ :each | each even ]) printString; cr.

"reject: is the inverse of select:"
Transcript show: 'Odds:  '; show: (numbers reject: [ :each | each even ]) printString; cr.

"do:separatedBy: runs extra code between elements, never before or after"
names := #('Ada' 'Alan' 'Grace').
names do: [ :n | Transcript show: n ] separatedBy: [ Transcript show: ', ' ].
Transcript cr.
