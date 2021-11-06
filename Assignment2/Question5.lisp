; --------------------------------------------------------------
; Assignment 2
; Question 5: Tribonacci
; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
; --------------------------------------------------------------
; 

(print "Question 5 : tribonacci")

(defun reverse2 (lst) ; Taken from class notes Lecture 6 p. 46
  (if (null lst)
      nil
    (append (reverse2 (cdr lst)) 
                 (list (car lst)))))

(defun iterative_tribonacci (k)
     (cond 
         ((zerop k) 
              '())
         ((= k 1) 
              '(0))
         ((= k 2) 
              '(0 0))
        (t (setq it_tribonacci '(1 0 0))
           (dotimes (n (- k 3)) 
               (setq it_tribonacci (append (list (+ (car it_tribonacci) 
                                            (car(cdr it_tribonacci)) 
                                            (car(cdr(cdr it_tribonacci))))) it_tribonacci)))
           (setq it_tribonacci (reverse2 it_tribonacci)))))

(defun recursive_tribonacci (k &optional (n1 0) (n2 0) (n3 1))
     (cond 
         ((zerop k) 
              '())
        (t (cons n1 (recursive_tribonacci (- k 1) n2 n3 (+ n1 n2 n3))))))




(print "Iterative function: ")
(iterative_tribonacci 10)
(print it_tribonacci)


(print "Recursive function: ")
(print (recursive_tribonacci 10 ))