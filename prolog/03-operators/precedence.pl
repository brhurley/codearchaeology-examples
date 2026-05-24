:- initialization(main).

main :-
    % * binds tighter than +
    A is 2 + 3 * 4,
    format('2 + 3 * 4   = ~w   (* before +)~n', [A]),

    % parentheses override the default precedence
    B is (2 + 3) * 4,
    format('(2 + 3) * 4 = ~w~n', [B]),

    % operators are just syntax for terms; =.. exposes the structure
    Expr = (1 + 2 * 3),
    Expr =.. Parts,
    format('1 + 2 * 3 as a term: ~w~n', [Expr]),
    format('Functor and args:    ~w~n', [Parts]),
    halt.
