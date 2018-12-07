/* To find union of two lists */

findUnion(L1,L2):-
     union(L1,L2,Output),
	 write(Output).

union([],[],[]).
union(List1,[],List1).
union(List1, [Head2|Tail2], [Head2|Output]):-
    \+(member(Head2,List1)), union(List1,Tail2,Output).
union(List1, [Head2|Tail2], Output):-
    member(Head2,List1), union(List1,Tail2,Output).  