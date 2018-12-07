/* To find the last element of a list */  

findLast(List):-
   last(List,Last),  /* built-in function which finds the last element of a list */
   write(Last).