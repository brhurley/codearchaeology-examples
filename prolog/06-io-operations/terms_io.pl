:- initialization(main).

main :-
    write_terms,
    read_terms,
    halt.

write_terms :-
    setup_call_cleanup(
        open('facts.pl', write, Out),
        (   writeq(Out, point(1, 2)), write(Out, '.'), nl(Out),
            writeq(Out, point(3, 4)), write(Out, '.'), nl(Out)
        ),
        close(Out)
    ).

read_terms :-
    setup_call_cleanup(
        open('facts.pl', read, In),
        read_all_terms(In),
        close(In)
    ).

read_all_terms(In) :-
    read(In, Term),
    (   Term == end_of_file
    ->  true
    ;   format('Read term: ~w~n', [Term]),
        Term = point(X, Y),
        Sum is X + Y,
        format('  Sum of coords: ~w~n', [Sum]),
        read_all_terms(In)
    ).
