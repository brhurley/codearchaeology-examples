#!/usr/bin/env escript
%% read_file.erl - Reading data back from a file
main(_) ->
    {ok, Bin} = file:read_file("languages.txt"),
    io:format("--- File contents ---~n~s", [Bin]),

    %% Split on newlines to count the lines (trim the trailing newline first)
    Lines = string:split(string:trim(Bin), "\n", all),
    io:format("Line count: ~B~n", [length(Lines)]).
