;;; Push an item on the front of a list
(defparameter *nums* (append '(1) '(2) '(3) '(9)))
(push 10 *nums*)
(cons '(11) *nums*)

;;; Get the nth value from a list
(format t "Element 0 = ~a ~%" (nth 0 *nums*)) 
(format t "Element Last = ~a ~%" (nth (- (length *nums*) 1) *nums*)) 