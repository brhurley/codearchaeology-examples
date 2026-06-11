"conditionals.st - branching is a message sent to a Boolean"
| age temperature |

age := 20.

"ifTrue:ifFalse: - the two-way conditional.
 The comparison >= returns a Boolean, which decides which block runs."
age >= 18
    ifTrue: [ 'You are an adult' displayNl ]
    ifFalse: [ 'You are a minor' displayNl ].

"ifTrue: alone - the block runs only when the condition is true"
age > 65 ifTrue: [ 'Senior discount applies' displayNl ].

"ifFalse: alone - the block runs only when the condition is false"
age < 13 ifFalse: [ 'Not a young child' displayNl ].

temperature := 30.

"Combine conditions with and:/or:. The argument is a block so it is
 only evaluated when needed (short-circuit evaluation)."
((temperature > 25) and: [ temperature < 35 ])
    ifTrue: [ 'Pleasant weather' displayNl ].
