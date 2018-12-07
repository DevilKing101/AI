/* To find fibonacci series */

fibonacci(N):-
   N = 1-> (write("0"));
   N = 2 -> (write("0"),nl,write("1"),nl);
   N>2 -> (write("0"),nl,write("1"),nl),fibo(N,3,0,1).


fibo(N,X,F0,F1):-  
   X=<N,
   F2 is F0+F1,
   write(F2),nl,
   F01 is F1,
   F11 is F2,
   X1 is X+1,
   fibo(N,X1,F01,F11).
   
   
  