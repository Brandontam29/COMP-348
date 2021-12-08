% --------------------------------------------------------------
% Assignment 3
% Question 9
% Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
% --------------------------------------------------------------

%Using append/3, write a Prolog query that receives a list, a start index, 
%and a length, and returns the sublist of the list. Use zero-based indexing.

sublist(L, S, E, O) :- append(A, B, L), length(A, S),
    					append(X, _, B), length(X, N), N is E - S + 1,
    					list_to_set(X, O).



%sublist([1, 2, 3, 4], 1, 2, O).
%sublist([1, 2, 3, 4], 0, 0, O).
%sublist([1, 2, 3, 4], 0, 10, O).