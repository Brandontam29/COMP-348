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

(print ( if-exists 1 '(1)))

(print ( if-exists 3 '(1 2 3 4 5)))

(print ( if-exists 0 '(1 2 3 4 5)))