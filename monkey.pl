state(monkey, in_room).
state(bananas, suspended).
state(chair, in_room).
state(stick, in_room).
state(monkey_has(nothing)).

action(move_to(X)) :- state(monkey, in_room), state(X, in_room).
action(climb_on(X)) :- state(monkey, in_room), state(X, in_room), X \== bananas.
action(reach_for(X)) :- state(monkey, in_room), state(X, suspended).
action(wave(X)) :- state(monkey, in_room), state(X, in_room), X \== bananas.
action(grab(X)) :- state(monkey, in_room), state(X, in_room), X \== bananas, state(monkey_has(nothing)).

result(move_to(X), state(monkey, X)).
result(climb_on(X), state(monkey, standing_on(X))).
result(reach_for(bananas), state(bananas, within_reach)).
result(wave(stick), state(bananas, knocked_down)).
result(grab(stick), state(monkey_has(stick))).

sequence([move_to(chair), climb_on(chair), grab(stick), wave(stick), grab(bananas)]).

possible([]).
possible([FirstAction | RestActions]) :-
  action(FirstAction),
  result(FirstAction, NewState),
  update(NewState),
  possible(RestActions).

update(state(X, Y)) :-
  retract(state(X, _)),
  assert(state(X, Y)).

execute :-
  sequence(Actions),
  possible(Actions).