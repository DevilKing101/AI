/* To check whether a list contains exactly two elements or not */


check(List):-
    findLength(List,L),
	L = 2 -> (write("Contains exactly 2 elements"));
	write("Does not contain exactly 2 elements").
	


findLength([],0).
findLength([_|Tail],Length):-
   findLength(Tail,P),
   Length is P+1.  