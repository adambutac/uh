;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Tue Jan 31 09:12:59 HST 2017
;;;; File: adam3593.lisp

(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")


(defun fibonacci-recursive(i)
  (if (or (= i 0) (= i 1))
    i
    (+ (fibonacci-recursive (- i 1)) (fibonacci-recursive (- i 2))))
)

(defun fibonacci-non-recursive(init)

)


