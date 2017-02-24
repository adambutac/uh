;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Thu Feb 23 12:28:54 HST 2017
;;;; Course: ICS313        Assignment:  4
;;;; File: adam3594.lisp

(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")

;;;; A simple program that uses a binary search to "guess" your number. 
;;;; Originally from the book "Land of Lisp"

;; The lower bound of numbers to guess.
(defparameter *small* 1)
;; The upper bound of numbers to guess.
(defparameter *big* 100)

;; Add *small* and *big* then bit shift right by one.
;; This finds the center point of the number line [*small*,*big*]
(defun guess-my-number ()
  (ash (+ *small* *big*) -1)
)

;; Set *big* to one smaller than the current guess, then generate the new guess.
;; There is an edge case where *big* becomes zero, and the guess becomes smaller than the lower bound *small*.
(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number)
)

;; Set *small* to one larger than the current guess, then generate the new guess.
(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number)
)

;; Reset the upper and lower bounds and restart the guessing.
(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number)
)

(defun play-game ()
  "repl to play the guessing game"

  (setq msg "Enter \"X\" to exit, \"C\" if N is correct,  \"H\" if N is higher, \"L\" if N is lower, or \"R\" to restart:  ")
  ; user input
  (setq in "")
  (setq count 1)
  (setq guess (guess-my-number))

  ;while in is not x
  (loop while(not (equal in "x")) do
    ;print the current guess
    (format t "The current guess stay ~d~%" guess)
    ;print msg
    (princ msg)
    ;get input
    (setq in (string-downcase (read-line)))
    ;check input
    (cond
      ;if x then exit 
      ((equal in "x") 
        (format t "Shoots den!~%"))
      ;if c then number guessed
      ((equal in "c") 
        (format t "Eh I guessed ~d in ~d tries!~%Hana hou?~%~%" guess count) 
        (start-over))
      ;if h then bigger
      ((equal in "h") 
        (setq count (+ count 1)) (bigger))
      ;if l then smaller
      ((equal in "l") 
        (setq count (+ count 1)) (smaller))
      ;if r then reset
      ((equal in "r") 
        (format t "Restarting!~%~%") (setq count 0) (start-over))
      ;otherwise print error notice and ask again
      (t 
        (format t "No can handle da kine.~%"))
    )
    (cond
      ;if there are no more moves
      ((and (> count 1) (= guess (guess-my-number)))
        (format t "No more moves left brah.~%Restarting!~%~%") 
        (setq count 0) 
        (start-over)
      )
    )
    (setq guess (guess-my-number))
  )
)
