fib(0,0).
fib(1,1).
fib(X,N):-N>1,N1 is N-1,N2 is N-2,fib(X1,N1),fib(X2,N2),X is X1+X2.