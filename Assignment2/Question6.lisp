; --------------------------------------------------------------
; Assignment 2
; Question 6: Depth of a List
; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
; --------------------------------------------------------------
; 

(print "Question 6: Depth of a List")

(defun depth (lst)
     (setq d 0)
     (block depthCal
         (cond 
             ((null lst) 
                  (return-from depthCal d))
             ((atom lst)
                  (return-from depthCal d))
             ((listp lst) 
                  (return-from depthCal (+ 1 (apply #'max (mapcar #'depth lst)))))
          )))


(print "Testing the function with the examples in the assignment instructions: ")
(print(depth NIL)) ; 0
(print(depth 1)) ; 0
(print(depth '(1))) ; 1
(print(depth '((2)))) ; 2
(print(depth '((2)(3 (6))(4)))) ; 3