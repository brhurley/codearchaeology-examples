"A block is an anonymous function - a first-class object you can
 store in a variable and invoke later by sending it 'value'."
| double greet sum |

"One-argument block."
double := [ :x | x * 2 ].
(double value: 21) displayNl.

"Blocks close over their arguments and build a result."
greet := [ :name | 'Hello, ', name, '!' ].
(greet value: 'Smalltalk') displayNl.

"Two-argument block, invoked with value:value:."
sum := [ :a :b | a + b ].
(sum value: 10 value: 20) displayNl.
