/* To divide a list into two lists of approx same length */


splitList(L):-
   div(L,A,B),
   write(A),nl,write(B).



div(L, A, B) :-
    append(A, B, L),
    length(A, N),
    length(B, N).

div(L, A, B) :-
    append(A, B, L),
    length(A, N),
    N1 is N + 1,
    length(B, N1).

div(L, A, B) :-
    append(A, B, L),
    length(A, N),
    N1 is N - 1,
    length(B, N1).