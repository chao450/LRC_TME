pere(pepin,charlemagne).
pere(charlemagne,victor).
pere(charlemagne,maria).
pere(jean,pepin).
pere(bernard,berthe).
pere(bertrand,bernard).
mere(jeanne,pepin).
mere(berthe,charlemagne).
mere(louise,berthe).
parent(X,Y) :- pere(X,Y).
parent(X,Y) :- mere(X,Y).
parents(X,Y,Z) :- pere(X,Z),mere(Y,Z).
frereOuSoeur(X,Y) :- pere(Z,X),pere(Z,Y).
frereOuSoeur(X,Y) :- mere(Z,X),mere(Z,Y).
grandPere(X,Y) :- pere(Z,Y),pere(X,Z).
grandPere(X,Y) :- mere(Z,Y),pere(X,Z).
grandeMere(X,Y) :- pere(Z,Y),mere(X,Z).
grandeMere(X,Y) :- mere(Z,Y),mere(X,Z).
ancetre(X,Y) :- grandPere(X,Y).
ancetre(X,Y) :- grandeMere(X,Y).
ancetre(X,Y) :- parent(X,Z),ancetre(Z,Y).
