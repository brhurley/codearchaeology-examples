:- initialization(main).

main :-
    % = is unification, not assignment: it binds variables
    Point = point(3, 4),
    format('Unified:  Point = ~w~n', [Point]),

    % Unification can also destructure a term
    Point = point(Px, Py),
    format('Px = ~w, Py = ~w~n', [Px, Py]),

    % =:= compares arithmetic VALUES
    ( 2 + 2 =:= 4
      -> writeln('2 + 2 =:= 4  -> true   (values match)') ; true ),

    % = compares STRUCTURE and does not evaluate, so it fails here
    ( 2 + 2 = 4
      -> writeln('2 + 2 = 4    -> true')
      ;  writeln('2 + 2 = 4    -> false  (term 2+2 differs from 4)') ),

    % == checks structural identity without binding anything
    ( 2 + 2 == 2 + 2
      -> writeln('2+2 == 2+2   -> true   (same structure)') ; true ),

    % \= succeeds when two terms cannot be unified
    ( apple \= orange
      -> writeln('apple \\= orange -> true') ; true ),
    halt.
