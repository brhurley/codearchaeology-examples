NB. The / adverb inserts a verb between array items
echo +/ 1 2 3 4 5      NB. sum
echo */ 1 2 3 4 5      NB. product
echo >./ 3 1 4 1 5 9   NB. maximum

NB. The & conjunction bonds a value to a verb, making a new monadic verb
double =: 2 & *
echo double 1 2 3 4

NB. Build a verb from other verbs: increment each (>:), then sum (+/)
incrsum =: +/ @: >:
echo incrsum 1 2 3 4
