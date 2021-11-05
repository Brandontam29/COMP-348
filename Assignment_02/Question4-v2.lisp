;; --------------------------------------------------------------
;; Assignment 2
;; Question 1
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
            (let ((n (- (length llist) 1)))
                (loop
                    (when (< n 0) (return))
                    (setq *curr* (car ( nth-element n llist)))

                    ;; (print *curr*)
                    ;; (print (listp (car *curr*)))

                    (if (numberp *curr*)
                        (print "hello number")
                    )

                    (if (listp *curr*)
                        (print "hello list")
                        ;; (setq *curr* ( flatten-nums-nodup (car *curr*)))
                    )

 (print *new-list*)
 
                    (if (not ( if-exists *curr* *new-list*))
                        (setq *new-list* 
                            (cons *curr* *new-list*)
                        )

                        (print *new-list*)
                    )


                    (setq n (- n 1))
                )
            )

            (return-from flatten-nums-nodup *new-list*)
        )
    )
    
)

;;;; TEST CASES
(print ( flatten-nums-nodup '(1 2 3 (4 5 1) 1)))     ;; (1 2 3 4 5)

;; (print ( flatten-nums-nodup '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))   ;; (1 2 3 2.5 4.5)
