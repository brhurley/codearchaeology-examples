#!/usr/bin/env escript
%% Functions are first-class values in Erlang

main(_) ->
    %% An anonymous function (a "fun") bound to a variable
    Triple = fun(X) -> X * 3 end,
    io:format("Triple(7) = ~p~n", [Triple(7)]),

    %% Pass funs to higher-order library functions
    Doubled = lists:map(fun(X) -> X * 2 end, [1, 2, 3, 4]),
    io:format("map double: ~p~n", [Doubled]),

    Evens = lists:filter(fun(X) -> X rem 2 =:= 0 end, [1, 2, 3, 4, 5, 6]),
    io:format("filter evens: ~p~n", [Evens]),

    %% foldl reduces a list to a single value using an accumulator
    Total = lists:foldl(fun(X, Acc) -> X + Acc end, 0, [1, 2, 3, 4, 5]),
    io:format("foldl sum: ~p~n", [Total]),

    %% Reference a named function as a value with `fun Name/Arity`
    Shouts = lists:map(fun shout/1, [hi, there]),
    io:format("map shout: ~p~n", [Shouts]),

    %% A closure captures N from the surrounding scope
    AddTen = make_adder(10),
    io:format("AddTen(5) = ~p~n", [AddTen(5)]).

shout(Atom) ->
    string:uppercase(atom_to_list(Atom)).

%% Returns a fun that "remembers" N - a closure
make_adder(N) ->
    fun(X) -> X + N end.
