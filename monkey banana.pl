% Facts
on_ground(monkey).
on_ground(stool).
on_ground(banana).

% Position facts:
% The banana is on top of the shelf (which is high)
on_shelf(banana).

% The stool is positioned below the shelf
on_stool(stool).

% Actions
climb(Stool) :-
    on_ground(monkey),
    on_ground(Stool),
    write('Monkey climbs onto the stool.'), nl,
    retract(on_ground(monkey)),
    assert(on_stool(monkey)).

reach_banana :-
    on_stool(monkey),
    on_shelf(banana),
    write('Monkey reaches the banana.'), nl.

% The main plan for the monkey to get the banana
get_banana :-
    write('Monkey starts on the ground.'), nl,
    climb(stool),
    reach_banana.
