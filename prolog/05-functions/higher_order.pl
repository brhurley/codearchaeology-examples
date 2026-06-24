% An ordinary two-argument predicate we can pass around
increment(X, Y) :- Y is X + 1.

% Take a predicate Goal and apply it to X twice
apply_twice(Goal, X, Result) :-
    call(Goal, X, Mid),
    call(Goal, Mid, Result).

:- initialization(main).

main :-
    % maplist applies increment to every element of the list
    maplist(increment, [1,2,3], Incremented),
    format('incremented = ~w~n', [Incremented]),
    % foldl accumulates a result; the lambda adds each element to the total
    foldl([X,A,B]>>(B is A + X), [1,2,3,4], 0, Total),
    format('total = ~w~n', [Total]),
    % call/3 invokes increment with the supplied arguments
    apply_twice(increment, 10, R),
    format('apply_twice(increment, 10) = ~w~n', [R]),
    halt.
