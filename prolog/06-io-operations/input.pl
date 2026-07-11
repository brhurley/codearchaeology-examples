:- initialization(main).

main :-
    write('Enter your name: '),
    read_line_to_string(user_input, Name),
    format('Hello, ~w!~n', [Name]),
    write('Enter a number: '),
    read_line_to_string(user_input, NumStr),
    number_string(Num, NumStr),
    Doubled is Num * 2,
    format('~w doubled is ~w~n', [Num, Doubled]),
    halt.
