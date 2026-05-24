:- initialization(main).

likes(mary, wine).
likes(mary, food).
likes(john, wine).

main :-
    % Conjunction (,) succeeds only if BOTH goals succeed
    ( ( likes(mary, wine), likes(mary, food) )
      -> writeln('mary likes wine AND food') ; true ),

    % Disjunction (;) succeeds if EITHER goal succeeds
    ( ( likes(john, food) ; likes(john, wine) )
      -> writeln('john likes food OR wine') ; true ),

    % Negation as failure: \+ succeeds when its goal is NOT provable
    ( \+ likes(john, food)
      -> writeln('john does NOT like food (not provable)') ; true ),
    halt.
