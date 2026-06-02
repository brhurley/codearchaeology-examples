#!/usr/bin/env escript

main(_) ->
    io:format("~s~n", [action(red)]),
    io:format("~s~n", [action(green)]),
    io:format("~s~n", [action(blue)]).

%% case picks the first matching pattern; _ is the catch-all
action(Color) ->
    case Color of
        red    -> "Stop";
        yellow -> "Slow down";
        green  -> "Go";
        _      -> "Unknown signal"
    end.
