"A method that accepts a block as an argument and applies it twice."
Object subclass: MathTools [
    applyTwice: aBlock to: aValue [
        ^aBlock value: (aBlock value: aValue)
    ]
]

| numbers tools |
numbers := #(1 2 3 4 5 6).

"collect: transforms each element (map)."
(numbers collect: [ :n | n * n ]) displayNl.

"select: keeps elements matching a condition (filter)."
(numbers select: [ :n | n even ]) displayNl.

"inject:into: folds the collection into a single value (reduce)."
(numbers inject: 0 into: [ :acc :n | acc + n ]) displayNl.

"Pass a block to a custom higher-order method."
tools := MathTools new.
(tools applyTwice: [ :x | x + 10 ] to: 5) displayNl.
