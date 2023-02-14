hypothesis(Name, Disease) :-
    symptom(Name, Indication),
    (
        Indication = fever,
        Disease = 'Viral Infection'
    ;
        Indication = rash,
        Disease = 'Allergic Reaction'
    ).

symptom(Name, Indication).

symptom(amit, fever).
symptom(amit, rash).