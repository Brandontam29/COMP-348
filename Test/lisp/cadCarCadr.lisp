(setq *print-case* :capitalize)

;;; Link together 2 objects of data
(cons 'superman 'batman)
 
;;; Create a list with list
(list 'superman 'batman 'flash)
 
;;; Add item to the front of another list
(cons 'aquaman '(superman batman))
 
;;; Get the first item out of a list with car
(format t "First = ~a ~%" (car '(superman batman aquaman)))
 
;;; Get everything but the first item with cdr
(format t "Everything Else = ~a ~%" (cdr '(superman batman aquaman)))
 
;;; Get the 2nd item d = (batman flash joker) a = (batman)
(format t "2nd Item = ~a ~%" (cadr '(superman batman aquaman flash joker)))
 
;;; Get the 3rd item = aquaman
(format t "3rd Item = ~a ~%" (caddr '(superman batman aquaman flash joker)))
 
;;; Get the 4th item (Max you can go)
(format t "4th Item = ~a ~%" (cadddr '(superman batman aquaman flash joker)))
 
;;; Get the 4th item = joker
(format t "4th Item = ~a ~%" (cddddr '(superman batman aquaman flash joker)))
 
;;; Get the 2nd item in the second list
;;; d : (aquaman flash joker) (wonderwoman catwoman)
;;; a : (aquaman flash joker)
;;; d : (flash joker)
;;; a : (flash)
(format t "2nd Item 2nd List = ~a ~%" 
(cadadr '((superman batman) (aquaman flash joker) (wonderwoman catwoman))))