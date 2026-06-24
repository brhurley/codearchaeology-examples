% A predicate "returns" a result through its last argument
double(X, Result) :- Result is X * 2.

square(X, Result) :- Result is X * X.

% A predicate can hand back several results at once -
% one output argument per value it computes
circle_props(Radius, Area, Circumference) :-
    Area is pi * Radius * Radius,
    Circumference is 2 * pi * Radius.

:- initialization(main).

main :-
    double(21, D),
    format('double(21) = ~w~n', [D]),
    square(9, S),
    format('square(9) = ~w~n', [S]),
    circle_props(5, A, C),
    format('circle area = ~2f, circumference = ~2f~n', [A, C]),
    halt.
