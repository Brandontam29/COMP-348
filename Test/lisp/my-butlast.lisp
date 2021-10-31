(defun my-butlast (list)
    (loop for l on list
        while (cdr l)
        collect (car l)
    )
)

(print ( my-butlast '(1 4 10)))   ;; (4 10)
(print ( my-butlast '(1 4 10 12)))
(print ( my-butlast '(1)))
