:- initialization(main).

main :-
    Sum    is 8 + 5,
    Diff   is 8 - 5,
    Prod   is 8 * 5,
    IntDiv is 17 // 5,      % integer division (truncates)
    Rem    is 17 mod 5,     % remainder
    Pow    is 2 ^ 8,        % integer power
    Quot   is 10.0 / 4,     % float division
    Abs    is abs(-9),      % arithmetic functions, not operators
    Max    is max(3, 7),
    Sq     is sqrt(16),
    format('8 + 5     = ~w~n', [Sum]),
    format('8 - 5     = ~w~n', [Diff]),
    format('8 * 5     = ~w~n', [Prod]),
    format('17 // 5   = ~w~n', [IntDiv]),
    format('17 mod 5  = ~w~n', [Rem]),
    format('2 ^ 8     = ~w~n', [Pow]),
    format('10.0 / 4  = ~w~n', [Quot]),
    format('abs(-9)   = ~w~n', [Abs]),
    format('max(3, 7) = ~w~n', [Max]),
    format('sqrt(16)  = ~w~n', [Sq]),
    halt.
