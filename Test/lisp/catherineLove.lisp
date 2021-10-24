
(setq *print-case* :capitalize)

(defvar *myAge* 24)
(defvar *catherineAge* 23)
(format t "Even though my age is ")
(cond 
    (
        ( < *myAge* *catherineAge*)
        (format t " ~d and Catherine is ~d year older, we love each other.~%" *myAge* 
            (- *catherineAge* *myAge*)))
    (   (format t " ~d and Catherine is ~d year younger, we love each other.~%" *myAge* 
            (- *myAge* *catherineAge*))
))

(format t "~~Brandon")