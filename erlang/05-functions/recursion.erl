#!/usr/bin/env escript
%% Recursion replaces loops in Erlang

main(_) ->
    %% Body-recursive factorial
    io:format("factorial(6) = ~p~n", [factorial(6)]),

    %% Recursing over a list with [Head | Tail]
    io:format("sum([1,2,3,4,5]) = ~p~n", [sum([1, 2, 3, 4, 5])]),
    io:format("len([a,b,c,d]) = ~p~n", [len([a, b, c, d])]),

    %% Tail recursion: an accumulator avoids growing the stack
    io:format("factorial_tail(6) = ~p~n", [factorial_tail(6)]),

    io:format("count_down(5): ", []),
    count_down(5),
    io:format("~n", []).

%% Body-recursive: the multiply happens after the recursive call returns
factorial(0)            -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

%% Walk a list: base case is the empty list, then handle head + tail
sum([])    -> 0;
sum([H|T]) -> H + sum(T).

len([])    -> 0;
len([_|T]) -> 1 + len(T).

%% Tail-recursive: a public function delegates to a private helper/2
factorial_tail(N) -> factorial_tail(N, 1).

factorial_tail(0, Acc)            -> Acc;
factorial_tail(N, Acc) when N > 0 -> factorial_tail(N - 1, N * Acc).

%% Recursion can also drive side effects, like printing
count_down(0) -> io:format("liftoff!");
count_down(N) when N > 0 ->
    io:format("~p ", [N]),
    count_down(N - 1).
