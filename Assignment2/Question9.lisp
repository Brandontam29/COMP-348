; --------------------------------------------------------------
; Assignment 2
; Question 9: In-Order and Pre-Order Tree
; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
; --------------------------------------------------------------
; 

(print "Question 9: In-Order and Pre-Order Tree")




(print "Testing the function with the examples in the assignment instructions: ")
(print (in-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))
(1 - 4 * 7 + 7 / 6))
(print (pre-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))
(+ - 1 * 4 7 / 7 6))