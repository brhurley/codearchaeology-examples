NB. Tacit verbs: define new operators by composing existing ones.

NB. Fork (f g h) y -> (f y) g (h y)
mean =: +/ % #
echo 'mean of 1..5:'
echo mean 1 2 3 4 5         NB. (1+2+3+4+5) % 5 = 3

NB. Another fork: range = max - min
range =: >./ - <./
echo 'range of 3 1 4 1 5 9 2 6:'
echo range 3 1 4 1 5 9 2 6  NB. 9 - 1 = 8

NB. Reflexive adverb ~ : (f~) y -> y f y
square =: *~
echo 'square of 7:'
echo square 7               NB. 7 * 7 = 49

NB. Compose with the @: conjunction
sum_of_squares =: +/ @: *:
echo 'sum of squares of 1..4:'
echo sum_of_squares 1 2 3 4 NB. 1 + 4 + 9 + 16 = 30

NB. Assignment operators: =: is global, =. is local
NB. Update in place by reassigning
counter =: 0
counter =: counter + 1
counter =: counter + 1
counter =: counter + 1
echo 'counter after three increments:'
echo counter                NB. 3
