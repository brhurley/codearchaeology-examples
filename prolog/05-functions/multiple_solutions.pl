% Three facts - color/1 has three solutions
color(red).
color(green).
color(blue).

% A small family knowledge base
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).

% Gather every Child for which parent(Parent, Child) holds
all_children(Parent, Children) :-
    findall(Child, parent(Parent, Child), Children).

:- initialization(main).

main :-
    % Collect all solutions of color(C) into a list
    findall(C, color(C), Colors),
    format('colors = ~w~n', [Colors]),
    all_children(tom, Kids),
    format('tom''s children = ~w~n', [Kids]),
    halt.
