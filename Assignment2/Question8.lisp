; --------------------------------------------------------------
; Assignment 2
; Question 8: Binary Search Tree
; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
; --------------------------------------------------------------
; 

(print "Question 8: Binary Search Tree")

(defun checkLeft (lst)
    (if (null lst) t)
    (and (> (car lst) (car (cdr lst))) 
         (checkRight (cdr lst)) 
         (checkLeft (car (cdr lst)))))

(defun checkRight (lst)
    (if (null lst) t)
    (and (< (car lst) (car (cdr (car lst)))) 
         (checkRight (cdr lst)) 
         (checkLeft (car (cdr (cdr lst))))))

(defun bstCheck (lst)
    (cond 
        ((null (car lst)) t)
        ((listp (car lst))
             (and (checkLeft lst) 
                  (checkRight lst) 
                  (btsCheck (second lst)) 
                  (btsCheck (thrid lst))))
        ))
    

(print "Testing the function with the examples in the assignment instructions: ")
(print (bstCheck '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))
(print (bstCheck '(8 (3 (15 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (1 () ()) ())))))




