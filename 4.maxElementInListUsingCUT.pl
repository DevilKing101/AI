maximum([H|T]):-
   maxlist([H|T],Max),
   write(Max).

maxlist([],0):-!,true.

maxlist([Head|Tail],Max) :-
    maxlist(Tail,TailMax),
    Head > TailMax,!,
    Max is Head.

maxlist([Head|Tail],Max) :-
    maxlist(Tail,TailMax),
    Head =< TailMax,
    Max is TailMax.