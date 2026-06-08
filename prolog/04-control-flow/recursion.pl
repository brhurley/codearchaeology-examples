% recursion.pl - Recursion replaces loops

% Countdown: a "loop" expressed as recursion
countdown(0) :- writeln('Liftoff!').
countdown(N) :-
    N > 0,
    writeln(N),
    N1 is N - 1,
    countdown(N1).

% Factorial: accumulate a result through the recursive calls
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% Sum a list by walking its head and tail
sum_list_recursive([], 0).
sum_list_recursive([H|T], Sum) :-
    sum_list_recursive(T, Rest),
    Sum is H + Rest.

:- writeln('Countdown from 3:'),
   countdown(3),
   factorial(5, F),
   format('5! = ~w~n', [F]),
   sum_list_recursive([10, 20, 30, 40], S),
   format('Sum of [10,20,30,40] = ~w~n', [S]),
   halt.
