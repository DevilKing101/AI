
findsum([],0).
findsum([X|Tail],Sum):-
    findsum(Tail,Temp),
	Sum is Temp+X.
