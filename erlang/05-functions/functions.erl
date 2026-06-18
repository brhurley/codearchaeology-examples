#!/usr/bin/env escript
%% Defining and calling functions in Erlang

main(_) ->
    %% Calling a simple, single-clause function
    io:format("square(9) = ~p~n", [square(9)]),

    %% A function that takes several parameters
    io:format("add(3, 4) = ~p~n", [add(3, 4)]),

    %% Multiple clauses: the matching one is chosen by argument shape
    io:format("area of circle r=2: ~p~n", [area({circle, 2})]),
    io:format("area of rectangle 3x4: ~p~n", [area({rectangle, 3, 4})]),

    %% Guards (the `when` keyword) add a boolean test to a clause
    io:format("sign(-8) = ~p~n", [sign(-8)]),
    io:format("sign(0) = ~p~n", [sign(0)]),
    io:format("sign(15) = ~p~n", [sign(15)]).

%% A single-clause function. The body's last expression is the return value.
square(N) -> N * N.

add(A, B) -> A + B.

%% One function name, two clauses matched on the shape of the argument.
%% Clauses are separated by ';' and the function ends with '.'
area({circle, R})       -> 3.14159 * R * R;
area({rectangle, W, H}) -> W * H.

%% Guards restrict when a clause applies. They are tried top to bottom.
sign(N) when N < 0 -> negative;
sign(0)            -> zero;
sign(N) when N > 0 -> positive.
