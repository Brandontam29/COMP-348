% --------------------------------------------------------------
% Assignment 3
% Question 10
% Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
% --------------------------------------------------------------
% 
% Write a prolog procedure every-other/2 that receives a source list as its 
% first argument and produces a list in the second argument whose elements 
% are the elements of odd indexes in the source list.

every-other([],[]).
every-other([X],[X]).
every-other([X, _ | T], [X | Y]):- every-other(T, Y).

%every-other([], L)
%every-other([1], L)
%every-other([1,2], L)
%every-other([1, 2, 3], L).
%every-other([1, 2, 3, 4, 5], L).