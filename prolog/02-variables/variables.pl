% Variables and Types in Prolog
% Demonstrates atoms, numbers, unification, compound terms, and type inspection.

:- initialization(main).

main :-
    % --- Atoms: symbolic constants ---
    Greeting = hello,
    Name     = 'Alice Smith',
    format('Atom:        ~w~n', [Greeting]),
    format('Quoted atom: ~w~n', [Name]),

    % --- Numbers: integers and floats ---
    % 'is' evaluates an arithmetic expression on the right.
    Age      is 30,
    Pi       is 3.14159,
    Sum      is 10 + 5,
    Product  is 6 * 7,
    format('Integer:     ~w~n', [Age]),
    format('Float:       ~w~n', [Pi]),
    format('Sum:         ~w~n', [Sum]),
    format('Product:     ~w~n', [Product]),

    % --- Unification: the real "assignment" ---
    % Structural unification binds X and Y by matching shapes.
    point(X, Y) = point(3, 4),
    format('Point:       X = ~w, Y = ~w~n', [X, Y]),

    % --- Compound terms and lists ---
    Person   = person('Bob', 42, engineer),
    Numbers  = [1, 2, 3, 4, 5],
    [Head|Tail] = Numbers,
    format('Person:      ~w~n', [Person]),
    format('List:        ~w~n', [Numbers]),
    format('Head: ~w  Tail: ~w~n', [Head, Tail]),

    % --- Type checking ---
    nl, write('Type checks:'), nl,
    check_type(hello),
    check_type(42),
    check_type(3.14),
    check_type([1, 2, 3]),
    check_type(foo(bar, baz)),

    halt.

% Classify a term by asking Prolog's type predicates in order.
% The order matters: is_list/1 must come before compound/1 because
% lists are themselves compound terms built from the '.'/2 functor.
check_type(Term) :-
    (   atom(Term)     -> Type = atom
    ;   integer(Term)  -> Type = integer
    ;   float(Term)    -> Type = float
    ;   is_list(Term)  -> Type = list
    ;   compound(Term) -> Type = compound
    ;   Type = unknown
    ),
    format('  ~w -> ~w~n', [Term, Type]).
