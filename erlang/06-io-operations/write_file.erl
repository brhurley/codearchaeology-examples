#!/usr/bin/env escript
%% write_file.erl - Writing data to a file
main(_) ->
    %% A list of strings is valid iodata - written in one shot
    Lines = ["Erlang 1986\n", "Elixir 2011\n", "Gleam 2016\n"],
    ok = file:write_file("languages.txt", Lines),
    io:format("Wrote languages.txt~n"),

    %% Open in append mode and stream one more line through io:format/3
    {ok, Fd} = file:open("languages.txt", [append]),
    io:format(Fd, "Erlang/OTP 27~n", []),
    file:close(Fd),
    io:format("Appended one line~n").
