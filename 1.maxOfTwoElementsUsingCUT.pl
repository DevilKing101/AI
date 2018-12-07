find(X,Y):-
    max(X,Y,M),
    write(M).
max(X,Y,X):- X>Y,!.
max(_,Y,Y).