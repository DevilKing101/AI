/* To intersect two lists X & Y */

intersect(L1,L2):-
        inter(L1,L2,X), !,
		write(X).

inter([], _, []).

inter([H1|T1], L2, [H1|Res]) :-
    member(H1, L2),
    inter(T1, L2, Res).

inter([_|T1], L2, Res) :-
    inter(T1, L2, Res).

