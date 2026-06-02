#!/usr/bin/env escript

main(_) ->
    io:format("classify(0)  = ~s~n", [classify(0)]),
    io:format("classify(42) = ~s~n", [classify(42)]),
    io:format("classify(-5) = ~s~n", [classify(-5)]).

%% Clauses are tried top to bottom; `when` adds a guard condition
classify(0)            -> "zero";
classify(N) when N > 0 -> "positive";
classify(_)            -> "negative".
