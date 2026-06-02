#!/usr/bin/env escript

main(_) ->
    Number = 7,
    Parity = if
        Number rem 2 =:= 0 -> "even";
        true               -> "odd"
    end,
    io:format("~p is ~s~n", [Number, Parity]),

    Temp = 30,
    Label = if
        Temp > 35 -> "scorching";
        Temp > 25 -> "warm";
        Temp > 15 -> "mild";
        true      -> "cold"
    end,
    io:format("It is ~s (~p degrees)~n", [Label, Temp]).
