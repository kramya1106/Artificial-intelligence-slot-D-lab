list_member(X,[X|_]).
list_number(X,[_|TAIL]):-list_member(X,TAIL).