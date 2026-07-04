#!/usr/bin/env escript
%% read_input.erl - Reading a line from standard input
main(_) ->
    Line = io:get_line("Enter your name: "),
    Name = string:trim(Line),
    io:format("Hello, ~s!~n", [Name]).
