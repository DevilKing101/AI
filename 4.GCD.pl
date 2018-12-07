findgcd(X,Y):-
   gcd(X,Y,Hcf),
   write("GCD = "),write(Hcf).

gcd(X,0,X).
gcd(X,Y,HCF):-
  R is mod(X,Y),
  gcd(Y,R,HCF).