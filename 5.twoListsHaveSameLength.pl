check(L1,L2):-
   findlength(L1,X),
   findlength(L2,Y),
   X=Y->write("same length");write("Does not have same length").

findlength([],0).
findlength([_|Tail],Length):-
   findlength(Tail,P),
   Length is P+1.   