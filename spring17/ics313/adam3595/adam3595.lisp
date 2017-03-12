;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Fri Mar 10 18:16:10 HST 2017
;;;; Course: ICS313        Assignment:  5"
;;;; File: adam3595.lisp
(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")
;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Fri 24 Feb 2017 02:07:49 PM HST
;;;; File: adam3594B.lisp

(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")

(defun id (crsNum asnNum)
  "Print name, course number, and homework assignment number. Return nil."
  (cond
    ((and (integerp crsNum) (integerp asnNum))
      (format t "Name: ~S~%" +ID+)
      (format t "Course: ICS~D~%" crsNum)
      (format t "Assignment # ~D~%" asnNum)))
)

; wizards_game part 1
(defparameter *nodes* '())

(defmacro new-location (loc des)
  (if (and (symbolp loc) (consp des))
    (if (not (assoc loc *nodes*))
      `(setq *nodes* (append *nodes* '((,loc ,des))))
      (format t "~S already exists in the game.~%" loc)
    )
    (format t "Incorrect parameter types.  Macro new-location requires a symbol and a list.")
  )
)

(new-location living-room (you are in the living-room.
                                a wizard is snoring loudly on the couch.))
(new-location garden (you are in a beautiful garden.
                           there is a well in front of you.))
(new-location attic (you are in the attic.
                          there is a giant welding torch in the corner.))
(new-location kitchen (you are in the kitchen.
                            there is a beautiful chocolate cake on the table.))

(defun describe-location (location nodes)
   (cadr (assoc location nodes)))

(defparameter *edges* '())
(defmacro new-edge (loc edgs &optional opt1 opt2)
  (if (and (symbolp loc) (consp edgs))
    (if (not (assoc loc *edges*))
      (cond
        ((and (null opt1) (null opt2))
          `(push  '(,loc ,edgs) *edges*)
        )
        ((null opt2)
          `(push  '(,loc ,edgs (,@opt1)) *edges*)
        )
        (t
          `(push  '(,loc ,edgs (,@opt1) (,@opt2)) *edges*)
        )
      )
    )
    (format t "Incorrect parameter types.  Macro new-edge requires a symbol and a list.")
  )
)

(new-edge living-room (garden west door)
                      (attic upstairs ladder)
                      (kitchen north door))
(new-edge garden (living-room east door))
(new-edge attic (living-room downstairs ladder))
(new-edge kitchen (living-room south door))



(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))

(defun describe-paths (location edges)
  (apply #'append (mapcar #'describe-path (cdr (assoc location edges)))))

(defparameter *objects* ())
(defparameter *object-locations* ())

(defmacro println (msg)
  (format t "~s~%" msg)
)

(defmacro new-object (loc obj)
  (setq objAtLoc (eq (car (assoc loc *object-locations*)) obj))
  (cond
    ((null loc)
      (println "location is null.")
    )
    ((null obj)
      (println "object is null.")
    )
    (objAtLoc
      (format t "~s exists at ~s.~%" obj loc)
    )
    (t
      (push obj *objects*)
      (push `(,obj ,loc) *object-locations*)
    )
  )
  (format t "~s~%" (rassoc loc *object-locations*))
  (format t "~s~%" (assoc obj *objects*))
)

(new-object living-room chair)
(new-object living-room table)
(new-object living-room couch)
(new-object basement book)
(new-object basement book)

(format t "ITEMS:~s~%" *objects*)
(format t "ITEM-LOCATIONS:~s~%" *object-locations*)

(defun objects-at (loc objs obj-loc)
   (labels ((is-at (obj)
              (eq (cadr (assoc obj obj-loc)) loc)))
       (remove-if-not #'is-at objs)))

(defun describe-objects (loc objs obj-loc)
   (labels ((describe-obj (obj)
              `(you see a ,obj on the floor.)))
      (apply #'append (mapcar #'describe-obj (objects-at loc objs obj-loc)))))

(defparameter *location* 'living-room)

(defun look ()
  (append (describe-location *location* *nodes*)
          (describe-paths *location* *edges*)
          (describe-objects *location* *objects* *object-locations*)))


(defun walk (direction)
  (labels ((correct-way (edge)
             (eq (cadr edge) direction)))
    (let ((next (find-if #'correct-way (cdr (assoc *location* *edges*)))))
      (if next
          (progn (setf *location* (car next))
                 (look))
          '(you cannot go that way.)))))

(defun pickup (object)
  (cond ((member object (objects-at *location* *objects* *object-locations*))
         (push (list object 'body) *object-locations*)
         `(you are now carrying the ,object))
      (t '(you cannot get that.))))


(defun inventory ()
  (cons 'items- (objects-at 'body *objects* *object-locations*)))

(defun have (object)
    (member object (cdr (inventory))))
;  wizards_game part 2

(defun game-repl ()
    (let ((cmd (game-read)))
        (unless (eq (car cmd) 'quit)
            (game-print (game-eval cmd))
            (game-repl))))

(defun game-read ()
    (let ((cmd (read-from-string (concatenate 'string "(" (read-line) ")"))))
         (flet ((quote-it (x)
                    (list 'quote x)))
             (cons (car cmd) (mapcar #'quote-it (cdr cmd))))))

(defparameter *allowed-commands* '(look walk pickup inventory))

(defun game-eval (sexp)
    (if (member (car sexp) *allowed-commands*)
        (eval sexp)
        '(i do not know that command.)))

(defun tweak-text (lst caps lit)
  (when lst
    (let ((item (car lst))
          (rest (cdr lst)))
      (cond ((eql item #\space) (cons item (tweak-text rest caps lit)))
            ((member item '(#\! #\? #\.)) (cons item (tweak-text rest t lit)))
            ((eql item #\") (tweak-text rest caps (not lit)))
            (lit (cons item (tweak-text rest nil lit)))
            (caps (cons (char-upcase item) (tweak-text rest nil lit)))
            (t (cons (char-downcase item) (tweak-text rest nil nil)))))))

(defun game-print (lst)
    (princ (coerce (tweak-text (coerce (string-trim "() " (prin1-to-string lst)) 'list) t nil) 'string))
    (fresh-line))

