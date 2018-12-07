mergesort([],[]).
mergesort([OneElement], [OneElement]).
mergesort([OneElement,SecondElement], SortedList) :-
	mergelists([OneElement],[SecondElement], SortedList).
mergesort([FirstLis|RestLis], SortedList) :-
	split([FirstLis|RestLis],[FirstSplitLis,RestSplitLis]),
	mergesort(FirstSplitLis, SortedFirstLis),
	mergesort(RestSplitLis, SortedRestLis),
	mergelists(SortedFirstLis, SortedRestLis, SortedList).

mergelists([], M, M).
mergelists(Lis, [], Lis).
 /* assume L and M are sorted lists*/
mergelists([FirstLis|RestLis], [FirstM|RestM], [FirstLis|RestLisMerged]) :-
	FirstLis < FirstM,
	mergelists(RestLis, [FirstM|RestM], RestLisMerged).
mergelists([FirstLis|RestLis], [FirstM|RestM], [FirstM|RestMMerged]) :-
	mergelists([FirstLis|RestLis], RestM, RestMMerged).

/* extract elements start to stop into a list */
sublist([],_,_,_,[]).
sublist([_|RestLis], Start, Stop, Ctr, SubList) :-
	Ctr < Start,
	NextCtr is Ctr + 1,
	sublist(RestLis, Start, Stop, NextCtr, SubList).
sublist(_, _, Stop, Ctr, []) :-
	Ctr > Stop.
sublist([FirstLis|RestLis], Start, Stop, Ctr, [FirstLis| SubList]) :-
	NextCtr is Ctr + 1,
	sublist(RestLis, Start, Stop, NextCtr, SubList).
/* split the list in half:,   ; returns ((first half)(second half)) */
split([], [[],[]]).
split([OneElement],[[OneElement],[]]).
split(Lis, [SubLis1,SubLis2]) :-
	length(Lis,Len),
	HalfLen is Len//2,
	HalfLenPlus is HalfLen + 1,
	sublist(Lis,1,HalfLen, 1, SubLis1),
	sublist(Lis, HalfLenPlus, Len, 1, SubLis2).
