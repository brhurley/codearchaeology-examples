#!/usr/bin/env escript
%% io_operations.erl - Formatted console output in Erlang
main(_) ->
    io:format("=== Formatted Output ===~n"),

    %% ~s prints a string, ~B prints an integer in base 10
    Name = "Erlang",
    Year = 1986,
    io:format("Language: ~s (released ~B)~n", [Name, Year]),

    %% ~.2f rounds a float to two decimal places
    Pi = 3.14159,
    io:format("Pi to 2 decimals: ~.2f~n", [Pi]),

    %% ~p pretty-prints any term (lists, tuples, maps, ...)
    Langs = [erlang, elixir, gleam],
    io:format("BEAM languages: ~p~n", [Langs]),

    %% ~w writes a term in raw form (no pretty formatting)
    io:format("Raw tuple: ~w~n", [{ok, 200}]),

    %% ~-12s left-justifies the string in a 12-character field
    io:format("[~-12s] done~n", ["padded"]).
