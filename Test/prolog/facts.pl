/*
Assignment Testing Prolog
Question 00
Written by: Brandon Tam 40100539
*/

main :- write('Hello World').

% This is a comment
travel(A, C) :- next_to(A,B), next_to(B, C).

next_to(montreal, quebec).
next_to(montreal, brossard).
next_to(montreal, laval).

next_to(quebec, saguenay).
next_to(quebec, gaspesie).

next_to(brossard, candiac).
next_to(brossard, st-bruno).

fruit(banana).
fruit(pineapple).
fruit(orange).