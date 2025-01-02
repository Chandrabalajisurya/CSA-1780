% Facts about fruits and their colors
color(apple, red).
color(banana, yellow).
color(orange, orange).
color(grape, purple).
color(kiwi, brown).
color(lemon, yellow).
color(strawberry, red).
color(blueberry, blue).

% Query rule to find the color of a fruit
find_color(Fruit, Color) :-
    color(Fruit, Color).

% Query rule to find the fruit of a particular color
find_fruit(Color, Fruit) :-
    color(Fruit, Color).
