(defun nth-element (to llist)
    (let ((*new-list* llist))
        (let ((n 0))
            (loop 
                (when (> n (- to 1)) (return))

                ;; (print (cdr *new-list*))
                (setq *new-list* (cdr *new-list*))
                (setq n (+ n 1))
            )
        )

        (return-from nth-element *new-list*)
    )
)

(print ( nth-element 3 '(1 2 3 4 5)))

(print ( nth-element 0 '(1 2 3 4 5)))