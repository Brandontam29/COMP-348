;; --------------------------------------------------------------
;; Assignment 2
;; Question 1
;; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
;; --------------------------------------------------------------

(defun sub-list (llist from &optional to)

    (if (or (<= from 0) (> from (length llist)))
        (return-from sub-list NIL)
    )

    (if (not (eql to NIL))
        (if (or (<= to 0) (> to (length llist)))
            (return-from sub-list NIL)
        )
    )

    (let ((*new-list* '()))
        (let ((n (- (if (eql to NIL) (length llist) to ) 1)))
            (loop 
                (when (< n (- from 1)) (return)) 
                (push (car (nthcdr n llist)) *new-list*)
                (decf n)
            )
        )

        (return-from sub-list *new-list*)
    )
    
)

;;;; TEST CASES
;; (print ( sub-list '(1 4 10) 2 3))   ;; (4 10)

;; (print ( sub-list '(1 4 10) 2))     ;; (4 10)

;; (print ( sub-list '(1 7 12) 1 4))   ;; NIL

;; (print ( sub-list '(1 7 12) 0 1))   ;; NIL

;; (print ( sub-list '(1 6 12) 4 2))   ;; NIL