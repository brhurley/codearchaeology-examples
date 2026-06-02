#!/usr/bin/env escript

main(_) ->
    countdown(3),
    Sum = sum_list([1, 2, 3, 4, 5]),
    io:format("Sum of 1..5 = ~p~n", [Sum]).

%% Base case stops the recursion; recursive case shrinks the argument
countdown(0) ->
    io:format("Liftoff!~n");
countdown(N) ->
    io:format("~p...~n", [N]),
    countdown(N - 1).

%% Recurse over [Head | Tail] until the list is empty
sum_list([])            -> 0;
sum_list([Head | Tail]) -> Head + sum_list(Tail).
