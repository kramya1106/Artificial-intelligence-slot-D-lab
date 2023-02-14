hanoi(1, X, Y, _) :-
    write('Move disk 1 from '), write(X), write(' to '), write(Y), nl.
hanoi(N, X, Y, Z) :-
    N > 1,
    M is N - 1,
    hanoi(M, X, Z, Y),
    hanoi(1, X, Y, _),
    hanoi(M, Z, Y, X).
