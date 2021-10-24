(setq *print-case* :capitalize)

(defparameter *sounds* '(hihi haha bobo toto))

(loop for x in *sounds*
    do (print x)
)