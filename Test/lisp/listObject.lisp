;;; Create a plist which uses a symbol to describe the data
(defvar superman (list :name "Superman" :secret-id "Clark Kent"))
 
;;; This list will hold heroes
(defvar *hero-list* nil)
 
;;; Adds items to our list
(push superman *hero-list*)
 
;;; Cycle through all heros in the list and print them out
(dolist (hero *hero-list*)
 
	;; Surround with ~{ and ~} to automatically grab data from list
	(format t "~{~a : ~a ~%~}~%~%" hero)
)