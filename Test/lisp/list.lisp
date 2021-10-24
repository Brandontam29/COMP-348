(list 1 2 'a 3)               ; Returns (1 2 A 3).
(list 1 '(2 3) 4)             ; Returns (1 (2 3) 4).
(list '(+ 2 1) (+ 2 1))       ; Returns ((+ 2 1) 3).
(list 1 2 3 (list 'a 'b 4) 5) ; Returns (1 2 3 (A B 4) 5).

(format t "hello word ~d ~%")