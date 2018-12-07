  
findfact(X):-
    fact(X,F),
	write(F).
	
fact(0,1).
fact(1,1).
fact(X,F):-
   X1 is X - 1,
   fact(X1,Temp),
   F is Temp* X.