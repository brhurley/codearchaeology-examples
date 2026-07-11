:- initialization(main).

main :-
    write_data,
    read_data,
    halt.

write_data :-
    setup_call_cleanup(
        open('languages.txt', write, Out),
        (   format(Out, '~w ~d~n', [prolog, 1972]),
            format(Out, '~w ~d~n', [erlang, 1986]),
            format(Out, '~w ~d~n', [python, 1991])
        ),
        close(Out)
    ),
    writeln('Wrote 3 lines to languages.txt').

read_data :-
    writeln('Reading languages.txt back:'),
    setup_call_cleanup(
        open('languages.txt', read, In),
        read_lines(In),
        close(In)
    ).

read_lines(In) :-
    read_line_to_string(In, Line),
    (   Line == end_of_file
    ->  true
    ;   format('  ~w~n', [Line]),
        read_lines(In)
    ).
