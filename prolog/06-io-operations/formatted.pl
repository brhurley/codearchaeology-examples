:- initialization(main).

main :-
    format('Name: ~w, Age: ~d~n', [alice, 30]),
    format('Pi to 4 places: ~4f~n', [3.14159265]),
    format('Hex of 255: ~16r~n', [255]),
    format('Char from code 65: ~c~n', [65]),
    format('~d items in stock~n', [7]),
    print_table,
    halt.

print_table :-
    format('~w~t~10|~w~n', ['Item', 'Qty']),
    format('~w~t~10|~w~n', ['apples', 12]),
    format('~w~t~10|~w~n', ['pears', 5]).
