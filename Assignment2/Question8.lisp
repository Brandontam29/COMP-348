; --------------------------------------------------------------
; Assignment 2
; Question 8: Binary Search Tree
; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
; --------------------------------------------------------------
; 

(print "Question 8: Binary Search Tree")

(defun checkLeft (lst)
    (if (null lst) t)
    (if (and (< (caadr lst) (car lst)) 
         (checkRight (car (cdr (cdr lst)))) 
         (checkLeft (car (cdr lst)))) t))

(defun checkRight (lst)
    (if (null lst) t)
    (if (and (< (car lst) (caaddr lst)) 
         (checkRight (car (cdr (cdr lst)))) 
         (checkLeft (car (cdr lst)))) t))

(defun bstCheck (lst)
     (if (null (car lst)) t)
     (if (and (checkLeft (car (cdr lst))) 
              (checkRight (car (cdr (cdr lst))))) 
                  (write t)))

(print "Testing the function with the examples in the assignment instructions: ")
(print (bstCheck '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))
(print (bstCheck '(8 (3 (15 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (1 () ()) ())))))