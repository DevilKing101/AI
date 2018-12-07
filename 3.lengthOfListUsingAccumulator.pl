length1([H|T]):-
  length1([H|T],0,N),
  write(N).

length1([], N, N).       
length1([_|T],L,N) :-
    L1 is L + 1,
    length1(T, L1, N).
	