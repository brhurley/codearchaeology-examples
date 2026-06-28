"Methods are functions attached to a class. They are invoked by
 sending the matching message to an instance of that class."
Object subclass: Calculator [
    "A keyword method taking a single argument."
    square: aNumber [
        ^aNumber * aNumber
    ]

    "A multi-keyword method taking two arguments: 'add:to:'."
    add: a to: b [
        ^a + b
    ]
]

| calc |
calc := Calculator new.
(calc square: 6) displayNl.
(calc add: 3 to: 4) displayNl.
