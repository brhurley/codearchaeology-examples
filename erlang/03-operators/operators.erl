#!/usr/bin/env escript
main(_) ->
    %% Arithmetic
    io:format("=== Arithmetic ===~n"),
    io:format("7 + 3   = ~p~n", [7 + 3]),
    io:format("7 - 3   = ~p~n", [7 - 3]),
    io:format("7 * 3   = ~p~n", [7 * 3]),
    io:format("10 / 4  = ~p~n", [10 / 4]),
    io:format("10 div 4 = ~p~n", [10 div 4]),
    io:format("10 rem 4 = ~p~n", [10 rem 4]),
    io:format("-7      = ~p~n", [-7]),

    %% Comparison and equality
    io:format("~n=== Comparison ===~n"),
    io:format("5 == 5.0   -> ~p~n", [5 == 5.0]),
    io:format("5 =:= 5.0  -> ~p~n", [5 =:= 5.0]),
    io:format("5 /= 5.0   -> ~p~n", [5 /= 5.0]),
    io:format("5 =/= 5.0  -> ~p~n", [5 =/= 5.0]),
    io:format("3 < 10     -> ~p~n", [3 < 10]),
    io:format("3 >= 3     -> ~p~n", [3 >= 3]),
    io:format("atom < 1   -> ~p~n", [atom < 1]),

    %% Boolean operators
    io:format("~n=== Boolean ===~n"),
    io:format("true and false   -> ~p~n", [true and false]),
    io:format("true or false    -> ~p~n", [true or false]),
    io:format("true xor false   -> ~p~n", [true xor false]),
    io:format("not true         -> ~p~n", [not true]),
    io:format("(1 < 2) andalso (3 < 4) -> ~p~n", [(1 < 2) andalso (3 < 4)]),
    io:format("(1 > 2) orelse  (3 < 4) -> ~p~n", [(1 > 2) orelse (3 < 4)]),

    %% Bitwise operators
    io:format("~n=== Bitwise ===~n"),
    io:format("5 band 3 = ~p~n", [5 band 3]),
    io:format("5 bor 3  = ~p~n", [5 bor 3]),
    io:format("5 bxor 3 = ~p~n", [5 bxor 3]),
    io:format("1 bsl 4  = ~p~n", [1 bsl 4]),
    io:format("16 bsr 2 = ~p~n", [16 bsr 2]),
    io:format("bnot 0   = ~p~n", [bnot 0]),

    %% List and string operators
    io:format("~n=== List Operators ===~n"),
    L1 = [1, 2, 3],
    L2 = [4, 5, 6],
    io:format("[1,2,3] ++ [4,5,6]     = ~p~n", [L1 ++ L2]),
    io:format("[1,2,3,4,5] -- [2,4]   = ~p~n", [[1, 2, 3, 4, 5] -- [2, 4]]),
    Greeting = "Hello, " ++ "World!",
    io:format("\"Hello, \" ++ \"World!\" = ~s~n", [Greeting]),

    %% Pattern matching with =
    io:format("~n=== Pattern Matching (=) ===~n"),
    {X, Y, Z} = {10, 20, 30},
    io:format("{X,Y,Z} = {10,20,30}  -> X=~p Y=~p Z=~p~n", [X, Y, Z]),
    [Head | Tail] = [1, 2, 3, 4],
    io:format("[H|T] = [1,2,3,4]     -> H=~p T=~p~n", [Head, Tail]),

    %% Precedence demonstration
    io:format("~n=== Precedence ===~n"),
    io:format("2 + 3 * 4         = ~p~n", [2 + 3 * 4]),
    io:format("(2 + 3) * 4       = ~p~n", [(2 + 3) * 4]),
    io:format("1 + 2 == 3        -> ~p~n", [1 + 2 == 3]),
    io:format("not true and false -> ~p~n", [not true and false]).
