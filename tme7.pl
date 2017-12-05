subs(chat, felin).
subs(lion, felin).
subs(chien, canide).
subs(felin, mammifere).
subs(souris, mammifere).
subs(canide, mammifere).
subs(mammifere,animal).
subs(canari,animal).
subs(animal,etreVivant).
subs(pet,some(aMaitre)).
subs(carnivoreExc,all(mange,animal)).
subs(herbivoreExc,all(mange,plante)).
subs(carnivoreExc,predateur).
subs(animal,some(mange)).
subs(lion,carnivoreExc).
subs(chihuahua,and(chien,pet)).

equiv(canide, chien).
equiv(and(animal,plante),nothing).
equiv(and(animal,some(aMaitre)),pet).
equiv(and(all(mange,nothing),some(mange)),nothing).

all(aMaitre,humain).

inst(felix,chat).
inst(pierre,humain).
inst(princesse,chihuahua).
inst(marie,humain).
inst(jerry,souris).
inst(titi,canari).

instR(felix,aMaitre,pierre).
instR(princesse,aMaitre,marie).
instR(felix,mange,titi).
instR(felix,mange,jerry).

subsS1(C,C).
subsS1(C,D) :- subs(C,D), C\==D.
subsS1(C,D) :- subs(C,E), subsS1(E,D).

subsS(C,D) :- subsS(C,D,[C]).
subsS(C,C,_).
subsS(C,D,_) :- subs(C,D),C\==D.
subsS(C,D,L) :- subs(C,E),not(member(E,L)),subsS(E,D,[E|L]),E\==D.

