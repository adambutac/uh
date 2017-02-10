;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Tue Jan 31 09:12:59 HST 2017
;;;; File: adam3593.lisp

(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")

(defun id (crsNum asnNum)
  "Print name, course number, and homework assignment number. Return nil."
    (format t "Name: ~S~%" +ID+)
    (format t "Course: ICS~D~%" crsNum)
    (format t "Assignment # ~D~%" asnNum)
)



(defun fibonacci-recursive(i)
  "Calculate the fibonacci sequence recursively.  Return the last value calculated."

  (if (or (= i 0) (= i 1))
    i
    (+ (fibonacci-recursive (- i 1)) (fibonacci-recursive (- i 2))))
)

(defun fibonacci-non-recursive(i)
  "Calculate the fibonacci sequence using a loop. Return the last value calculated."
  (cond
    ((integerp i)
      (loop for j from 0 to i
        for lst = 0 
          then nxt and nxt = 1
          then (+ lst nxt)
        finally (return lst)
      ))
    (t
      (format t "Error: Parameter must be an integer."))
  )
)

(defun lcm-recursive(a b)
  "The Least Common Multiple (LCM) of two or three numbers is the smallest number that the numbers are factors of. Like the LCM of 3 and 4 is 12, because 12 is the smallest number that 3 and 4 are both factors for."
  
)

(defun lcm-non-recursive()

)

(defun remove-numbers-recursive()
"Create a recursive (5 p) and a non-recursive (5 p) version of a remove-numbers function. This function takes a list of parameters and returns a list of all parameters in the input that are not numbers (in the same order and at the same depth). I.e. Numeric parameters are discarded."

)

(defun remove-numbers-non-recursive()

)

(defun gcd-recursive()
"Create a recursive (5 p) and non-recursive (5 p) implementation of the greatest common divisor function that works on 2 or 3 numbers. The greatest common divisor is the largest integer that is a divisor of all parameters. "

)

(defun gcd-non-recursive()

)
