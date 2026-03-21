#!/usr/bin/env escript
main(_) ->
    %% Maps - key-value pairs (introduced in Erlang/OTP 17)
    User = #{name => "Alice", age => 30, active => true},
    io:format("User: ~w~n", [User]),

    %% Accessing map values
    Name = maps:get(name, User),
    Age = maps:get(age, User),
    io:format("Name: ~s, Age: ~w~n", [Name, Age]),

    %% Safe access with default
    Email = maps:get(email, User, "none"),
    io:format("Email: ~s~n", [Email]),

    %% Updating maps (creates a new map)
    UpdatedUser = User#{age := 31},
    io:format("Updated User: ~w~n", [UpdatedUser]),

    %% Adding new keys
    ExtendedUser = User#{email => "alice@example.com"},
    io:format("Extended User: ~w~n", [ExtendedUser]),

    %% Pattern matching on maps
    #{name := MatchedName, age := MatchedAge} = User,
    io:format("Matched Name: ~s, Age: ~w~n", [MatchedName, MatchedAge]),

    %% Proplist (list of tuples) - traditional key-value before maps
    Options = [{timeout, 5000}, {retries, 3}, {verbose, true}],
    Timeout = proplists:get_value(timeout, Options),
    io:format("~nTimeout: ~w~n", [Timeout]),

    %% Type conversions
    io:format("~n--- Type Conversions ---~n"),

    %% Integer <-> Float
    IntVal = 42,
    FloatVal = float(IntVal),
    BackToInt = trunc(3.7),
    Rounded = round(3.7),
    io:format("float(42): ~w~n", [FloatVal]),
    io:format("trunc(3.7): ~w~n", [BackToInt]),
    io:format("round(3.7): ~w~n", [Rounded]),

    %% Integer <-> String (list)
    NumStr = integer_to_list(42),
    StrNum = list_to_integer("42"),
    io:format("integer_to_list(42): ~s~n", [NumStr]),
    io:format("list_to_integer(\"42\"): ~w~n", [StrNum]),

    %% Float <-> String (list)
    FloatStr = float_to_list(3.14, [{decimals, 2}]),
    StrFloat = list_to_float("3.14"),
    io:format("float_to_list(3.14): ~s~n", [FloatStr]),
    io:format("list_to_float(\"3.14\"): ~w~n", [StrFloat]),

    %% Atom <-> String (list)
    AtomStr = atom_to_list(hello),
    StrAtom = list_to_atom("hello"),
    io:format("atom_to_list(hello): ~s~n", [AtomStr]),
    io:format("list_to_atom(\"hello\"): ~w~n", [StrAtom]),

    %% List <-> Tuple
    MyList = [1, 2, 3],
    MyTuple = list_to_tuple(MyList),
    BackToList = tuple_to_list(MyTuple),
    io:format("list_to_tuple([1,2,3]): ~w~n", [MyTuple]),
    io:format("tuple_to_list({1,2,3}): ~w~n", [BackToList]),

    %% Binary <-> List (string)
    Bin = list_to_binary("hello"),
    Lst = binary_to_list(<<"hello">>),
    io:format("list_to_binary(\"hello\"): ~w~n", [Bin]),
    io:format("binary_to_list(<<\"hello\">>): ~s~n", [Lst]),

    ok.
