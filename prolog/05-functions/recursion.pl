% Base case: the factorial of 0 is 1
factorial(0, 1).
% Recursive case: N! = N * (N-1)!
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% Recursively count the elements of a list
list_length([], 0).
list_length([_|T], N) :-
    list_length(T, N0),
    N is N0 + 1.

% Recursively add up the elements of a list
sum_elements([], 0).
sum_elements([H|T], Sum) :-
    sum_elements(T, Sum0),
    Sum is H + Sum0.

:- initialization(main).

main :-
    factorial(5, F),
    format('factorial(5) = ~w~n', [F]),
    list_length([a,b,c,d], Len),
    format('length = ~w~n', [Len]),
    sum_elements([10,20,30], Sum),
    format('sum = ~w~n', [Sum]),
    halt.
