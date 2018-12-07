/* Find the reverse of a list */

findReverse(List):-
    reverse(List,Rev),
	write(Rev).
	
reverse([],[]).    
reverse([H|T], Rev) :-
    reverse(T, Trev), append(Trev, [H], Rev).