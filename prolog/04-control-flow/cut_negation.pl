% cut_negation.pl - Cut and negation as failure

% Cut (!) commits to the first matching clause, preventing backtracking
max(X, Y, X) :- X >= Y, !.
max(_, Y, Y).

% A small knowledge base
likes(alice, prolog).
likes(alice, logic).
likes(bob, python).

% Negation as failure: \+ Goal succeeds if Goal cannot be proven
dislikes(Person, Thing) :- \+ likes(Person, Thing).

:- max(7, 3, M1), format('max(7,3) = ~w~n', [M1]),
   max(2, 9, M2), format('max(2,9) = ~w~n', [M2]),
   ( likes(alice, prolog)    -> writeln('alice likes prolog')          ; true ),
   ( dislikes(bob, prolog)   -> writeln('bob does not like prolog')    ; true ),
   ( dislikes(alice, prolog) -> writeln('alice does not like prolog')
                              ;  writeln('alice DOES like prolog') ),
   halt.
