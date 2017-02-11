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
  ;;check i as an integer
  (if (integerp i)
    ;;when i is 0 or 1 we hit the end case
    (if (or (= i 0) (= i 1))
      i
      ;;recurse through the sequence in reverse
      (+ (fibonacci-recursive (- i 1)) (fibonacci-recursive (- i 2)))
    )
    (format t "Error: Parameter must be an integer.")
  )
)

(defun fibonacci-non-recursive(i)
  "Calculate the fibonacci sequence using a loop. Return the last value calculated."
  ;;check i as an integer
  (if (integerp i)
    ;;loop from 0 to i
    (loop repeat i 
      for x = 0 then y
      and y = 1 then (+ x y)
      finally(return y)
    )
    (format t "Error: Parameter must be an integer."))
)

(defun lcm-recursive-three(a b c)
  (if (and (and (integerp a) (integerp b)) (integerp c))
    (lcm-recursive a (lcm-recursive b c))
    (format t "Error: Parameter must be an integer.")
  )
)

(defun lcm-recursive(a b)
  "The Least Common Multiple (LCM) of two or three numbers is the smallest number that the numbers are factors of. Like the LCM of 3 and 4 is 12, because 12 is the smallest number that 3 and 4 are both factors for."
  (if (and (integerp a) (integerp b))
    (/ (* a b) (gcd-recursive a b))
    (format t "Error: Parameter(s) must be an integer.")
  )
)

(defun lcm-non-recursive-three(a b c)
  (lcm-non-recursive a (lcm-non-recursive b c))
)

(defun lcm-non-recursive(a b)
  (if (and (integerp a) (integerp b))
    (/ (* a b) (gcd-non-recursive a b))
    (format t "Error: Parameter(s) must be an integer.")
  )
)

(defun remove-numbers-recursive(lst)
"A recursive function to filter out integers from a list"
  ;;check lst for type cons
  (if (consp lst)
    ;;if the next item in the list is nil return
    (if (equal (car lst) nil)  
      lst 
      ;;if the next item in the list is an integer return the rest of the list
      (if (integerp (car lst))
        (remove-numbers-recursive (cdr lst))
        ;;if the next item in the list is not an integer return it and the rest of the list
        (cons (car lst) (remove-numbers-recursive (cdr lst)))
      )
    )
    (format t "Error: Parameter must be a list.")
  )
)

(defun remove-numbers-non-recursive(lst)
  (if (consp lst)
    (loop for i in lst
      when (not (numberp i))
      collect i
    )
    (return (format t "Error: Parameter must be a list.")) 
  )
)

(defun gcd-recursive-three(a b c)
"Greatest common divisor algorithm using the classic recusive method.(proof of concept)"
  (gcd-recursive a (gcd-recursive b c))
)

(defun gcd-recursive(a b)
"Greatest common divisor algorithm using the classic recusive method."
  ;;if b is 0 we reached the end case, a should be the gcd
  (if (and (integerp a) (integerp b))
    (if (= b 0)
      a
      ;;recurse through all the common divisors of a and b
      (gcd-recursive b (mod a b))
    )
    (format t "Error: Parameters must be integers.")
  )
)

(defun gcd-non-recursive-three(a b c)
"Greatest common divisor algorithm using a loop in place of recursion.(proof of correctness)"
  (gcd-non-recursive a (gcd-non-recursive b c)) 
)

(defun gcd-non-recursive(a b)
"Greatest common divisor algorithm using a loop in place of recursion."
  (cond 
    ((not (and (integerp a) (integerp b)))
      (format t "Error: Parameters must be integers.")
    )
    (t
      (loop  while(not (= 0 b)) do
        (setq x a)
        (setq a b)
        (setq b (mod x b))
      )
      a
    )
  )
)
