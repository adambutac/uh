(defparameter +ID+ "Adam Butac")

(defun id (crsNum asnNum)
	(format t "Name: ~S~%" +ID+)
	(format t "Course: ICS~D~%" crsNum)
	(format t "Assignment # ~D~%" asnNum)
)

(defun my-finder(item li)
	;; check if the list is empty 
	;; return nil if it is
	(if li
		;; check that li is of type cons 
		;; print an error message if false
		(if (consp li)
			;; check that item is equal to the first item in the list
			;; return the item or recursively check the next tiem in the list
			(if (eq item (car li))
				item
				(my-finder item (cdr li)))	
			(format t "Error in MY-FINDER function. Second parameter must be a list, but was \"~S\".~%" li))
		nil)
)

(defun eat-last(li)
	;; check if the list is empty 
	;; return nil if it is
	(if li
		;; check that li is of type cons 
		;; print an error message if false
		(if (consp li)
			;; check if the item is the last item in the list
			;; return the  2nd to the last item plus the rest of the list
			(if (= 1 (list-length li))
				nil
				(cons (car li) (eat-last (cdr li))))	
			(format t "Error in EAT-LAST function. Parameter must be a list, but was \"~S\".~%" li))
		nil)
)

(defun symbols-only(li)
	;; check if the list is empty 
	;; return nil if it is
	(if li
		;; check that li is of type cons 
		;; print an error message if false
		(if (consp li)
			;; return only the symbols within the list
			(if (symbolp (car li))
				(cons (car li) (symbols-only (cdr li)))	
				(symbols-only (cdr li)))	
			(format t "Error in SYMBOLS-ONLY function. Parameter must be a list, but was \"~S\".~%" li))
		nil)
)

(defun my-equal(arg1 arg2)
	;; check that arg1 and arg2 are of type symbol and use eq
	;; use equal for everything else
	(if (and (symbolp arg1) (symbolp arg2))
		(eq arg1 arg2)
		(equal arg1 arg2))
)

(defun matchp(arg1 arg2)
	(if (my-equal arg1 arg2)
		arg1
		(progn
			(princ "No match")
			nil))
)
