; --------------------------------------------------------------
; Assignment 2
; Question 9: In-Order and Pre-Order Tree
; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
; --------------------------------------------------------------
; 

(print "Question 9: In-Order and Pre-Order Tree")

(defun hasLeft(lst)
    (caadr lst)
    )

(defun hasRight (lst)
    (caaddr lst)
    )

(defun in-order (lst)
    (if (hasLeft lst) (in-order (car (cdr lst))))
    (write (car lst))
    (if (hasRight lst) (in-order (car (cdr (cdr lst))))))

(defun pre-order (lst)
    (write (car lst))
    (if (hasLeft lst) (pre-order (car (cdr lst))))
    (if (hasRight lst) (pre-order (car (cdr (cdr lst))))))




(print "Testing the function with the examples in the assignment instructions: ")
(print "In-Order test")
(in-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))
;(1 - 4 * 7 + 7 / 6))
(print "Pre-Order test")
(pre-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ()))))
;(+ - 1 * 4 7 / 7 6))

