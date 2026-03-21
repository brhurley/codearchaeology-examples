#!/usr/bin/env escript
main(_) ->
    %% Basic binding
    X = 42,
    io:format("X = ~w~n", [X]),

    %% Matching against an already-bound variable succeeds if the value is the same
    X = 42,
    io:format("X still matches 42~n"),

    %% Rebinding X to a different value would crash:
    %% X = 100,  %% ** exception error: no match of right hand side value 100

    %% Pattern matching with tuples
    {A, B, C} = {1, hello, 3.14},
    io:format("A: ~w, B: ~w, C: ~w~n", [A, B, C]),

    %% Tagged tuples - common Erlang pattern
    {ok, Value} = {ok, "success"},
    io:format("Value: ~s~n", [Value]),

    %% Underscore ignores values
    {_, Second, _} = {first, "I want this", third},
    io:format("Second: ~s~n", [Second]),

    %% List pattern matching - head and tail
    [Head | Tail] = [1, 2, 3, 4, 5],
    io:format("Head: ~w~n", [Head]),
    io:format("Tail: ~w~n", [Tail]),

    %% Multiple elements from the head
    [First, Second2 | Rest] = [10, 20, 30, 40],
    io:format("First: ~w, Second2: ~w, Rest: ~w~n", [First, Second2, Rest]),

    %% Nested pattern matching
    {point, {PX, PY}} = {point, {100, 200}},
    io:format("Point X: ~w, Point Y: ~w~n", [PX, PY]),

    %% Using bound variables in patterns
    Target = error,
    {Target, Reason} = {error, "not found"},
    io:format("Matched ~w with reason: ~s~n", [Target, Reason]),

    %% Pattern matching in case expressions
    Result = {ok, 42},
    case Result of
        {ok, Val} ->
            io:format("~nCase matched ok: ~w~n", [Val]);
        {error, Err} ->
            io:format("~nCase matched error: ~w~n", [Err])
    end,

    ok.
