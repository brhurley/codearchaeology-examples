#!/usr/bin/env escript

main(_) ->
    %% Generate 1..10, keep only the values where the filter holds
    Evens = [X || X <- lists:seq(1, 10), X rem 2 =:= 0],
    io:format("Evens: ~p~n", [Evens]),

    %% lists:foreach replaces a counter loop when you only want side effects
    lists:foreach(fun(I) -> io:format("Line ~p~n", [I]) end, lists:seq(1, 3)),

    %% lists:map transforms every element into a new list
    Squares = lists:map(fun(X) -> X * X end, [1, 2, 3, 4]),
    io:format("Squares: ~p~n", [Squares]).
