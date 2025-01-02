% Facts about symptoms
has_symptom(john, fever).
has_symptom(john, cough).
has_symptom(mary, headache).
has_symptom(mary, fever).

% Rule for diagnosing fever
diagnose_fever(Person) :-
    has_symptom(Person, fever),
    write(Person), write(' has a fever'), nl.

% Rule for diagnosing cold
diagnose_cold(Person) :-
    has_symptom(Person, cough),
    has_symptom(Person, sore_throat),
    write(Person), write(' has a cold'), nl.

% Rule for diagnosing flu
diagnose_flu(Person) :-
    has_symptom(Person, fever),
    has_symptom(Person, headache),
    write(Person), write(' has the flu'), nl.

% Rule for deciding if someone needs to see a doctor
needs_doctor(Person) :-
    diagnose_fever(Person),
    write(Person), write(' should see a doctor immediately!'), nl.

needs_doctor(Person) :-
    diagnose_flu(Person),
    write(Person), write(' should see a doctor immediately!'), nl.
