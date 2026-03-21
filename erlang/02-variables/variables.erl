#!/usr/bin/env escript
main(_) ->
    %% Integers - arbitrary precision (no overflow)
    Age = 30,
    BigNumber = 1000000000000,
    HexValue = 16#FF,
    BinaryValue = 2#1010,
    io:format("Age: ~w~n", [Age]),
    io:format("BigNumber: ~w~n", [BigNumber]),
    io:format("HexValue: ~w~n", [HexValue]),
    io:format("BinaryValue: ~w~n", [BinaryValue]),

    %% Floats - 64-bit double precision
    Pi = 3.14159,
    Temperature = -40.0,
    Scientific = 1.0e-3,
    io:format("Pi: ~w~n", [Pi]),
    io:format("Temperature: ~w~n", [Temperature]),
    io:format("Scientific: ~w~n", [Scientific]),

    %% Atoms - named constants (start with lowercase or are single-quoted)
    Status = ok,
    Color = red,
    SpecialAtom = 'an atom with spaces',
    io:format("Status: ~w~n", [Status]),
    io:format("Color: ~w~n", [Color]),
    io:format("SpecialAtom: ~w~n", [SpecialAtom]),

    %% Booleans are just atoms
    IsActive = true,
    IsDeleted = false,
    io:format("IsActive: ~w~n", [IsActive]),
    io:format("IsDeleted: ~w~n", [IsDeleted]),

    %% Strings are lists of character codes
    Greeting = "Hello, Erlang!",
    io:format("Greeting: ~s~n", [Greeting]),
    io:format("Greeting as list: ~w~n", [Greeting]),

    %% Binaries - efficient byte sequences (modern string handling)
    BinGreeting = <<"Hello, binary!">>,
    io:format("BinGreeting: ~s~n", [BinGreeting]),

    %% Tuples - fixed-size containers
    Point = {10, 20},
    Person = {person, "Alice", 30},
    io:format("Point: ~w~n", [Point]),
    io:format("Person: ~w~n", [Person]),

    %% Lists
    Numbers = [1, 2, 3, 4, 5],
    Mixed = [1, hello, 3.14, "text"],
    io:format("Numbers: ~w~n", [Numbers]),
    io:format("Mixed: ~w~n", [Mixed]),

    %% Type checking with guard BIFs
    io:format("~n--- Type Checks ---~n"),
    io:format("is_integer(Age): ~w~n", [is_integer(Age)]),
    io:format("is_float(Pi): ~w~n", [is_float(Pi)]),
    io:format("is_atom(Status): ~w~n", [is_atom(Status)]),
    io:format("is_boolean(IsActive): ~w~n", [is_boolean(IsActive)]),
    io:format("is_list(Numbers): ~w~n", [is_list(Numbers)]),
    io:format("is_tuple(Point): ~w~n", [is_tuple(Point)]),
    io:format("is_binary(BinGreeting): ~w~n", [is_binary(BinGreeting)]),
    ok.
