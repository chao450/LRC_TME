non(0,1).
non(1,0).
et(0,0,0).
et(0,1,0).
et(1,0,0).
et(1,1,1).
ou(0,0,0).
ou(1,0,1).
ou(0,1,1).
ou(1,1,1).
net(X,Y,Z) :- et(X,Y,V), non(V,Z).
xou(X,Y,Z) :- non(X,P), et(P,Y,V), non(Y,Q), et(X,Q,W), ou(V,W,Z).
circuit(X,Y,Z) :- net(X,Y,P), non(X,Q), xou(P,Q,S), non(S,Z).
