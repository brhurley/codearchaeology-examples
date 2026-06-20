NB. Tacit verbs name no arguments - they describe how verbs combine

sum   =: +/        NB. +/ is "plus inserted between items" = sum
count =: #         NB. # counts the items
mean  =: +/ % #    NB. fork: (sum) % (count)

echo sum 1 2 3 4 5
echo count 1 2 3 4 5
echo mean 1 2 3 4 5

NB. @: is the "at" conjunction: apply *: to the whole array, then +/
NB. *: squares each element
sumsq =: +/ @: *:
echo sumsq 1 2 3 4
