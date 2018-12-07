reverse(X):- 
    reverse(X,[],Rev),
	write(Rev).

reverse([],Rev,Rev).     
reverse([H|T],Prev,Rev) :-
    reverse(T,[H|Prev],Rev).