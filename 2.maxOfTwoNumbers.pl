max(X,Y):-
  X>Y->write(X);
  Y>X->write(Y);
  write("Both are equal").