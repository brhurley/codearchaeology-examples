#!/usr/bin/env escript
%% io_errors.erl - Handling I/O errors gracefully
main(_) ->
    case file:read_file("does_not_exist.txt") of
        {ok, Bin} ->
            io:format("Read ~B bytes~n", [byte_size(Bin)]);
        {error, Reason} ->
            io:format("Could not read file: ~p~n", [Reason])
    end,
    io:format("Program continues after the error~n").
