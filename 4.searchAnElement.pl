/* Search whether an element is present in a list or not */ 
	
search([],X):-
   write("Element not present in the list").	

search([H|Tail],X):-
    H = X -> (write("Element present in the list"));
	search(Tail,X).