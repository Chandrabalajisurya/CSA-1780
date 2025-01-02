% Facts about symptoms
has_symptom(john, fever).
has_symptom(john, cough).
has_symptom(mary, headache).
has_symptom(mary, fever).
has_symptom(bob, sore_throat).
has_symptom(bob, cough).

% Rule for diagnosing fever
has_fever(Person) :-
    has_symptom(Person, fever),
    write(Person), write(' has a fever'), nl.

% Rule for diagnosing cold
has_cold(Person) :-
    has_symptom(Person, cough),
    has_symptom(Person, sore_throat),
    write(Person), write(' has a cold'), nl.

% Rule for diagnosing flu
has_flu(Person) :-
    has_symptom(Person, fever),
    has_symptom(Person, headache),
    write(Person), write(' has the flu'), nl.

% Rule for deciding if someone needs to see a doctor based on their symptoms
needs_doctor(Person) :-
    has_fever(Person),
    write(Person), write(' should see a doctor immediately!'), nl.

needs_doctor(Person) :-
    has_flu(Person),
    write(Person), write(' should see a doctor immediately!'), nl.

needs_doctor(Person) :-
    has_cold(Person),
    write(Person), write(' should see a doctor if symptoms worsen!'), nl.
