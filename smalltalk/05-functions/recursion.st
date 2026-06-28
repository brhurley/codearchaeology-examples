"Add recursive methods directly to the Integer class.
 'extend' opens an existing class to add behavior."
Integer extend [
    "Classic factorial via recursion."
    fact [
        self <= 1 ifTrue: [ ^1 ].
        ^self * (self - 1) fact
    ]

    "Fibonacci - two recursive calls per step."
    fib [
        self < 2 ifTrue: [ ^self ].
        ^(self - 1) fib + (self - 2) fib
    ]
]

5 fact displayNl.
6 fact displayNl.
10 fib displayNl.
