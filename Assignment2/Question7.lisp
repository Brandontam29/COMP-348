; --------------------------------------------------------------
; Assignment 2
; Question 7: Center of Gravity
; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
; --------------------------------------------------------------
; 

(print "Question 7: Center of Gravity")

(defun NbWeights (ls &optional (res 0))
    (cond ((null ls) '0)
          ((atom ls) '0)
          ((listp ls)
             (+ (NbWeights (caadr ls)) (NbWeights (caaddr ls)) 1))
    ))

(defun size (ls)
    (cond ((null ls) '0)
          ((atom ls) '0)
          ((listp ls)
             (car ls)
             (+ 1 (size (cdr ls))))))

(defun cog (lst)
     (block my_cog
     (setq N (/ (+ 1 (size lst)) 2))
     (setq Ni (nbWeights lst))
     (setq len (size lst))
     (setq res '0)
     (setq ls lst)
         (dotimes (i len)
             (cond
                ((null lst) 
                    )
                ((atom lst)
                     )
                ((listp lst) 
                     (setq res (+ res (* (NbWeights (car ls)) (- i N))))
                     (write (NbWeights ls))))
              (setq ls (cdr ls))
              )
      (return-from my_cog (/ res Ni))))


(print "Testing the function with the examples in the assignment instructions: ")
(print(cog '(a (b c) d (e (f g))))) ; 0.3571428571428571
(print(cog '(a (b c) d (e f)))) ; 0.1666666666666667
(print(cog '(a (b c) (e f) d))) ; 0
(print(cog '(1 2 3 4 5))) ; 0
(print(cog '(1 2 3 4 5 6))) ; 0