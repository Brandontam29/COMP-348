% --------------------------------------------------------------
% Assignment 3
% Question 11
% Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
% --------------------------------------------------------------
% 
%Write a Prolog query with arity 2 to return the first n numbers 
%of a Lucas sequence in a list. 

lucasNum(0, 2) :- !. %Base Case
lucasNum(1, 1) :- !. %Base Case
lucasNum(N, L) :- N > 1, M is N - 1, O is N - 2,
			 lucasNum(M, A),
   			 lucasNum(O, B),
   			 L is A + B.

lucasSeq(N, L) :- numlist(0, N, R),
    			  maplist(lucasNum, R, L).

