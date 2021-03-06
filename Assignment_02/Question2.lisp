;; --------------------------------------------------------------
;; Assignment 2
;; Question 2
;; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
;; --------------------------------------------------------------

(defun nth-element (to llist)
    (let ((*new-list* llist))
        (let ((n 0))
            (loop 
                (when (> n (- to 1)) (return))
                (setq *new-list* (cdr *new-list*))
                (setq n (+ n 1))
            )
        )

        (return-from nth-element *new-list*)
    )
)


(defun sub-list2 (llist from &optional to)

    (if (<= from 0)
        (setq from 1)
    )
  
    (if (or (eql to NIL) (> to (length llist)))
        (setq to (length llist))
    )

    (if (> from to)
        (return-from sub-list2 NIL)
    )

    (let ((*new-list* '()))
        (let ((n (- to 1)))
            (loop 
                (when (< n (- from 1)) (return)) 
                (setq *new-list* (cons (car ( nth-element n llist)) *new-list*))
                (setq n (- n 1))
            )
        )

        (return-from sub-list2 *new-list*)
    )
    
)

;;;; TEST CASES
(print ( sub-list2 '(1 4 10) 2 3))   ;; (4 10)

(print ( sub-list2 '(1 4 10) 2))     ;; (4 10)

(print ( sub-list2 '(1 7 12) 1 4))   ;; (1 7 12)

(print ( sub-list2 '(1 7 12) 0 1))   ;; (1)

(print ( sub-list2 '(1 6 12) 4 2))   ;; NIL