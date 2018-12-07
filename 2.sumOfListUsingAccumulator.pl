  sum([H|T]):-
  sum([H|T],0,N),
  write(N).
  

sum([], N, N).       
sum([H|T], L, N) :-
    S1 is L + H,
    sum(T, S1, N).