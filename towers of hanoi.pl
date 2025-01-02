% Main predicate to solve the Towers of Hanoi problem
towers_of_hanoi(N, Source, Target, Auxiliary) :-
    move_disks(N, Source, Target, Auxiliary).

% Move N disks from the source pole to the target pole using an auxiliary pole
move_disks(0, _, _, _) :- !.  % Base case: No disks to move
move_disks(N, Source, Target, Auxiliary) :-
    N > 0,
    N1 is N - 1,
    move_disks(N1, Source, Auxiliary, Target),   % Move N-1 disks to auxiliary
    write_move(Source, Target),                  % Move the Nth disk
    move_disks(N1, Auxiliary, Target, Source).   % Move N-1 disks to target

% Predicate to output a move
write_move(Source, Target) :-
    format('Move disk from ~w to ~w~n', [Source, Target]).
