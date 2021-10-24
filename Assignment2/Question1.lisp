(defparameter *sounds* '(aaa bbb ccc ddd eee fff ggg))

(defun sub-list (llist)
    ;; (print from)
    ;; (print to)
    ;; (defvar *new-list* nil)

    (loop for x from 1 to (list-length llist)
        do (print x))

    ;; (return-from sub-list new-list))
)

( sub-list *sounds*) 

;; (loop for z in ( sub-list *sounds* ))
;;     do (print z)
;; )

;; (loop for x in *sounds*
;;     do (print x)
;; )