;; --------------------------------------------------------------
;; Assignment 2
;; Question 4
;; Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
;; --------------------------------------------------------------

(defun flatten (l)
    (cond ((null l) nil)
        ((atom l) (list l))
        (t (loop for a in l appending ( flatten a)))
    )
)

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

(defun if-exists (comp llist)
    (let ((n 0))
        (loop
            (when (> n (- (length llist) 1)) (return))
            (if (eql comp (car ( nth-element n llist)) )
                (return-from if-exists T)
            )
            (setq n (+ n 1))
        )

            (return-from if-exists nil)
        )    
)


(defun flatten-nums-nodup (llist)
    (let ((*curr* nil))
        (let ((*new-list* '()))

        (setq llist ( flatten llist))

            (let ((n 0))
                (loop
                    (when (> n (- (length llist) 1)) (return))
                    (setq *curr* (car ( nth-element n llist)))

                    (if (numberp *curr*)
                        (if (not ( if-exists *curr* *new-list*))
                            (setq *new-list* 
                                (append *new-list* (list *curr*))
                            )
                        )
                    )

                    (setq n (+ n 1))
                )
            )

            (return-from flatten-nums-nodup *new-list*)
        )
    )
)

;;;; TEST CASES
(print ( flatten-nums-nodup '((4 5 1 1))))                          ;; (1 2 3 4 5)

(print ( flatten-nums-nodup '(1 2 3 (4 5 1) 1)))                    ;; (1 2 3 4 5)

(print ( flatten-nums-nodup '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))  ;; (1 2 3 2.5 4.5)
