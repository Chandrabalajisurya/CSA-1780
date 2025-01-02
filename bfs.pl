% Graph Representation (adjacency list with costs)
edge(a, b, 1).  % There is an edge from a to b with a cost of 1
edge(b, c, 2).  % There is an edge from b to c with a cost of 2
edge(a, d, 4).  % There is an edge from a to d with a cost of 4
edge(d, c, 1).  % There is an edge from d to c with a cost of 1

% Heuristic values (estimated cost to the goal from each node)
heuristic(a, 5).  % Heuristic value for node a
heuristic(b, 3).  % Heuristic value for node b
heuristic(c, 0).  % Heuristic value for node c (goal)
heuristic(d, 2).  % Heuristic value for node d

% Base case: If the current node is the goal, stop the search and return the path
best_first_search(Node, Node, Path, _) :-
    write('Goal reached: '), write(Node), nl,
    reverse([Node|Path], FinalPath), % Reverse to get the path from start to goal
    write('Path: '), write(FinalPath), nl.

% Recursive case: Explore neighbors and prioritize based on heuristic value
best_first_search(CurrentNode, GoalNode, Path, OpenList) :-
    % Get neighbors of the current node
    edge(CurrentNode, Neighbor, _Cost),
    \+ member(Neighbor, Path),  % Avoid revisiting nodes (no cycles)

    % Get the heuristic value for the neighbor
    heuristic(Neighbor, HeuristicValue),

    % Add the neighbor to the open list with its heuristic value (priority queue)
    best_first_search(Neighbor, GoalNode, [CurrentNode|Path], [(HeuristicValue, Neighbor)|OpenList]).

% Entry point: This starts the search from a start node to a goal node
start_search(StartNode, GoalNode) :-
    best_first_search(StartNode, GoalNode, [], [(0, StartNode)]).  % Empty path, priority queue initialized with start node.
