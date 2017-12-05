cacheLettre([],_,[]).
cacheLettre([C|M],C,[_|MT]) :- cacheLettre(M,C,MT).
cacheLettre([A|M],C,[A|MT]) :- not(A=C), cacheLettre(M,C,MT).

appartient(X,[X|_]).
appartient(X,[A|ALPHA]) :- not(X=A),appartient(X,ALPHA).

cacheGroupeLettre(M,[A|[]],MT) :- cacheLettre(M,A,MT).
cacheGroupeLettre(M,[A|G],MT) :- cacheLettre(M,A,Z),cacheGroupeLettre(Z,G,MT).

enlevePref([X|L],G,Res) :- member(X,G),enlevePref(L,G,Res).
enlevePref([X|L],G,[X|L]) :- not(member(X,G)).
enlevePref([],_,[]).



prefixe([X|L1],L2) :- append([X|L1],_,L2).

cherchedico(_,[],[]).
cherchedico(Prefixe,[Mot|Dico],[Mot|Res]) :- prefixe(Prefixe,Mot),cherchedico(Prefixe,Dico,Res).
cherchedico(Prefixe,[M|Dico],Res) :- not(prefixe(Prefixe,M)),cherchedico(Prefixe,Dico,Res).
