% if_then_else.pl - Conditionals in Prolog

% The declarative way: multiple clauses, each guarded by a condition
sign(N, positive) :- N > 0.
sign(N, negative) :- N < 0.
sign(0, zero).

% The if-then-else operator: ( Cond -> Then ; Else )
% Chains read top to bottom; the first true condition wins.
grade(Score, Letter) :-
    ( Score >= 90 -> Letter = 'A'
    ; Score >= 80 -> Letter = 'B'
    ; Score >= 70 -> Letter = 'C'
    ; Letter = 'F'
    ).

:- sign(7, S1),  format('7 is ~w~n', [S1]),
   sign(-2, S2), format('-2 is ~w~n', [S2]),
   sign(0, S3),  format('0 is ~w~n', [S3]),
   grade(95, G1), format('Score 95: ~w~n', [G1]),
   grade(83, G2), format('Score 83: ~w~n', [G2]),
   grade(71, G3), format('Score 71: ~w~n', [G3]),
   grade(50, G4), format('Score 50: ~w~n', [G4]),
   halt.
