% Facts about birds that can fly
can_fly(sparrow).
can_fly(eagle).
can_fly(parrot).
can_fly(hummingbird).

% Facts about birds that cannot fly
cannot_fly(ostrich).
cannot_fly(penguin).

% Rule to determine if a bird can fly
bird_can_fly(Bird) :-
    can_fly(Bird),
    write(Bird), write(' can fly.'), nl.

% Rule to determine if a bird cannot fly
bird_cannot_fly(Bird) :-
    cannot_fly(Bird),
    write(Bird), write(' cannot fly.'), nl.
