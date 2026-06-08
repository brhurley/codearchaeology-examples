% backtracking.pl - Backtracking IS control flow

color(red).
color(green).
color(blue).

dish(soup).
dish(salad).

% Every combination falls out of backtracking automatically
meal(Color, Dish) :- color(Color), dish(Dish).

:- writeln('All colors (via forall + backtracking):'),
   forall(color(C), (write('  '), writeln(C))),
   writeln('All meal combinations:'),
   findall(Color-Dish, meal(Color, Dish), Meals),
   forall(member(M, Meals), (write('  '), writeln(M))),
   length(Meals, N),
   format('Total combinations: ~w~n', [N]),
   halt.
