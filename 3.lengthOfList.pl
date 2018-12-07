findlength([],0).
findlength([_|Tail],Length):-
   findlength(Tail,P),
   Length is P+1.   