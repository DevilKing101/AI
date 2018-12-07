concat(L1,L2):-
   con(L1,L2,L3),
   write(L3).
con([],L2,L2).
con([X|Tail],L2,[X|Tail1]):-
   con(Tail,L2,Tail1).