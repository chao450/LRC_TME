concatene([A|X],Y,[A|Z]) :- concatene(X,Y,Z).
concatene([],L,L).

inverse([A|L1],L2) :- inverse(L1,L3), concatene(L3,[A],L2).
inverse([],[]).

supprime([X|Y],X,Z) :- supprime(Y,X,Z).
supprime([A|X],Y,[A|Z]) :- not(A=Y), supprime(X,Y,Z).
supprime([],_,[]).

filtre(L1,[A|L2],L3) :- supprime(L1,A,L4), filtre(L4,L2,L3).
filtre(X,[],X).

palindrome(L) :- inverse(L,L).


