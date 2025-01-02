% Facts about parent-child relationships
parent(john, mary).     % John is a parent of Mary
parent(john, james).    % John is a parent of James
parent(mary, sophia).   % Mary is a parent of Sophia
parent(mary, olivia).   % Mary is a parent of Olivia
parent(james, lucas).   % James is a parent of Lucas
parent(olivia, liam).   % Olivia is a parent of Liam

% Rules to define relationships

% A person is a mother if they are a parent of someone
mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).  % Assuming a "female/1" predicate to define mothers

% A person is a father if they are a parent of someone
father(Father, Child) :-
    parent(Father, Child),
    male(Father).  % Assuming a "male/1" predicate to define fathers

% A person is a sibling if they share the same parents
sibling(Sibling1, Sibling2) :-
    parent(Parent, Sibling1),
    parent(Parent, Sibling2),
    Sibling1 \= Sibling2.  % Ensure it's not the same person

% A person is a grandparent if they are a parent of a parent
grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).

% A person is an aunt or uncle if they are a sibling of a parent
aunt_or_uncle(AuntOrUncle, NieceNephew) :-
    sibling(AuntOrUncle, Parent),
    parent(Parent, NieceNephew).

% Facts about gender (can be expanded)
female(mary).
female(sophia).
female(olivia).
female(liam).  % In this example, I'm making Liam female for the sake of simplicity

male(john).
male(james).
male(lucas).

