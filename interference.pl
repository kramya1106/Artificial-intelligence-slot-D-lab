interpret(true) :- !.
interpret((GoalA, GoalB)) :- !,
    interpret(GoalA),
    interpret(GoalB).
interpret(Goal) :-
    rule(Goal, Body),
    interpret(Body).

rule(p, q).
rule(q, r).
rule(r, s).
rule(s, true).
