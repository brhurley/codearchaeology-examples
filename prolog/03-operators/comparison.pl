:- initialization(main).

show(Label, Goal) :-
    ( call(Goal) -> Result = true ; Result = false ),
    format('~w  -->  ~w~n', [Label, Result]).

main :-
    show('3 + 4 =:= 7', (3 + 4 =:= 7)),
    show('2 * 5 =\\= 11', (2 * 5 =\= 11)),
    show('10 > 9', (10 > 9)),
    show('5 < 5', (5 < 5)),
    show('5 =< 5', (5 =< 5)),
    show('8 >= 10', (8 >= 10)),
    halt.
