% Facts about planets
planet(mercury).
planet(venus).
planet(earth).
planet(mars).
planet(jupiter).
planet(saturn).
planet(uranus).
planet(neptune).

% Facts about the size of the planets (in diameter, arbitrary units)
diameter(mercury, 4879).
diameter(venus, 12104).
diameter(earth, 12742).
diameter(mars, 6779).
diameter(jupiter, 139820).
diameter(saturn, 116460).
diameter(uranus, 50724).
diameter(neptune, 49244).

% Facts about the distance from the sun (in million kilometers)
distance_from_sun(mercury, 57.9).
distance_from_sun(venus, 108.2).
distance_from_sun(earth, 149.6).
distance_from_sun(mars, 227.9).
distance_from_sun(jupiter, 778.3).
distance_from_sun(saturn, 1427).
distance_from_sun(uranus, 2871).
distance_from_sun(neptune, 4495).

% Facts about whether the planet has moons
has_moons(mercury, no).
has_moons(venus, no).
has_moons(earth, yes).
has_moons(mars, yes).
has_moons(jupiter, yes).
has_moons(saturn, yes).
has_moons(uranus, yes).
has_moons(neptune, yes).

% Rules
% A planet is classified as a "gas giant" if it is Jupiter, Saturn, Uranus, or Neptune
gas_giant(Planet) :-
    planet(Planet),
    (Planet = jupiter; Planet = saturn; Planet = uranus; Planet = neptune).

% A planet is considered "terrestrial" if it is Mercury, Venus, Earth, or Mars
terrestrial(Planet) :-
    planet(Planet),
    (Planet = mercury; Planet = venus; Planet = earth; Planet = mars).

% Queries

% Find the diameter of a planet
% Example: diameter_of_planet(earth, Diameter).
diameter_of_planet(Planet, Diameter) :-
    planet(Planet),
    diameter(Planet, Diameter).

% Find the distance of a planet from the sun
% Example: distance_to_sun(earth, Distance).
distance_to_sun(Planet, Distance) :-
    planet(Planet),
    distance_from_sun(Planet, Distance).

% Check if a planet has moons
% Example: has_moons(earth, MoonStatus).
has_moons(Planet, Status) :-
    planet(Planet),
    has_moons(Planet, Status).

