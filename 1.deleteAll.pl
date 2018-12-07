/* To delete all occurences of an element */

deleteAll(List,X):-
    del(List,X,Result),
	write(Result).

del([],X,[]).

del([H|T],X,Result):-
   H = X,
   del(T,X,Result).

del([H|T],X,[H|Result]):-
   del(T,X,Result).