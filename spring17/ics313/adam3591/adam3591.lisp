;;;; A simple program that uses a binary search to "guess" your number. 
;;;; Originally from the book "Land of Lisp"

;; My name
(defparameter +ID+ "Adam Butac")
;; The lower bound of numbers to guess.
(defparameter *small* 1)
;; The upper bound of numbers to guess.
(defparameter *big* 100)

;; Add *small* and *big* then bit shift right by one.
;; This finds the center point of the number line [*small*,*big*]
(defun guess-my-number ()
       (ash (+ *small* *big*) -1))

;; Set *big* to one smaller than the current guess, then generate the new guess.
;; There is an edge case where *big* becomes zero, and the guess becomes smaller than the lower bound *small*.
(defun smaller ()
       (setf *big* (1- (guess-my-number)))
            (guess-my-number))

;; Set *small* to one larger than the current guess, then generate the new guess.
(defun bigger ()
       (setf *small* (1+ (guess-my-number)))
            (guess-my-number))

;; Reset the upper and lower bounds and restart the guessing.
(defun start-over ()
     (defparameter *small* 1)
        (defparameter *big* 100)
	   (guess-my-number))
