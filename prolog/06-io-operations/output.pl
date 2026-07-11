:- initialization(main).

main :-
    write('Plain write: '), write('hello world'), nl,
    write('Quoted writeq: '), writeq('hello world'), nl,
    writeln('writeln adds a newline for you'),
    write('Indented:'), tab(4), writeln('after 4 spaces'),
    halt.
