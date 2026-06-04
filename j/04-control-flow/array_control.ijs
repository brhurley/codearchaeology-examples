NB. Sum 0..9 — no loop, just "plus over" (+/)
echo +/ i. 10

NB. Factorial of 5 — the ! verb, no loop
echo ! 5

NB. Keep only the even numbers — filter without an if inside a loop
echo (#~ 0 = 2&|) i. 10

NB. Tacit conditional with Agenda (@.)
NB. (* y) is the sign: _1, 0, or 1; adding 1 gives an index 0, 1, or 2
classify =: ('negative'`'zero'`'positive') @. (1 + *)
echo classify _7
echo classify 0
echo classify 100
