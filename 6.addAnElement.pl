/* Add an element in a list */

add(List,X):-
    append(List,[X],A),
	write(A).


