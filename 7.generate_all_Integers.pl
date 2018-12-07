/* Generate all integers between X and Y */


generateAll(X,Y):-
    X =< Y -> write(X),nl,Z is X+1,
	generateAll(Z,Y).
	