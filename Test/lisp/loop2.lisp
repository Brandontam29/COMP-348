
(setq *print-case* :capitalize)

(setq x 1)
(loop 
    (format t "~d ~%" x)
    (setq x (+ x 1))
    (when (> x 10) (return x))
)