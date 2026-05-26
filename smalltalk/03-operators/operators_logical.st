"Boolean logic through messages"
(true & false) printNl.   "eager logical AND"
(true | false) printNl.   "eager logical OR"
(true not) printNl.       "logical NOT is a unary message"

"Keyword messages with blocks give short-circuit evaluation"
((5 > 3) and: [2 < 4]) printNl.  "right side only runs if left is true"
((5 < 3) or: [2 < 4]) printNl.   "right side only runs if left is false"

"String concatenation is the , (comma) binary message"
('Small' , 'talk') displayNl.
