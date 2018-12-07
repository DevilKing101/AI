bubblesort(Ls0, Ls) :-
    (	append(Lefts, [A,B|Rights], Ls0), A @> B ->
	append(Lefts, [B,A|Rights], Ls1),
	bubblesort(Ls1, Ls)
    ;	Ls = Ls0
    ).
