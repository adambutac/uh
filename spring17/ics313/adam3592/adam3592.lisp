;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Mon Jan 23 13:14:48 HST 2017
;;;; File: adam3592.lisp

(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")

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
            (if (equal item (car li))
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
            (format t "No match~%")
            nil))
)

(defun my-assert(fun chk)
  (if (equal (eval fun) chk)
    (princ "[PASS]")
    (princ "[FAIL]")
  )
  (format t " EVAL: ~S~%     RESULT: ~S~%" fun chk)
)

(defun test()
  (id 313 2)

  (my-assert '(my-finder 8 '(8)) 8)
  (my-assert '(my-finder 8 "FOO") NIL)
  (my-assert '(my-finder 9 '(1 2 3 4 5 6 7 8 9 0)) 9)
  (my-assert '(my-finder 8 9) NIL)
  (my-assert '(my-finder "FOO" '("BAR" "BAZ" "FOO")) "FOO")

  (my-assert '(eat-last '(8 9 10 3)) '(8 9 10))
  (my-assert '(eat-last '(1)) NIL)
  (my-assert '(eat-last "FOO") NIL)
  (my-assert '(eat-last '()) NIL)
  (my-assert '(eat-last '(! @ $ % ^ &)) '(! @ $ % ^))


  (my-assert '(symbols-only '(1 "two" (list 3 4))) ())
  (my-assert '(symbols-only (list 'foo 'bar ())) '(foo bar nil))
  (my-assert '(symbols-only (list 1 "foo" 'fie 'fo "fum" 99)) '(fie fo))
  (my-assert '(symbols-only '()) NIL)
  (my-assert '(symbols-only '(1 2 3 4 5 6 "seven")) NIL)
 
  (my-assert '(matchp 9 "9") NIL)
  (my-assert '(matchp '(foo bar) (list 'foo 'bar)) '(foo bar))
  (my-assert '(matchp 8 9) NIL)
  (my-assert '(matchp 9 9) 9)
  (my-assert '(matchp nil ()) NIL)
  nil 
)
