;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Wed Mar 22 16:41:53 HST 2017
;;;; Course: ICS313        Assignment:  6"
;;;; File: adam3596.lisp
(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")

(defun id (crsNum asnNum)
  "Print name, course number, and homework assignment number. Return nil."
  (cond
    ((and (integerp crsNum) (integerp asnNum))
      (format t "Name: ~S~%" +ID+)
      (format t "Course: ICS~D~%" crsNum)
      (format t "Assignment # ~D~%" asnNum))))

; wizards_game part 1
(defparameter *nodes* '())

(defmacro new-location (loc des)
  "macro to create new locations in the game"
  (if (and (symbolp loc) (consp des))
    (if (not (assoc loc *nodes*))
      `(setq *nodes* (append *nodes* '((,loc ,des))))
      (format t "~S already exists in the game.~%" loc))
    (format t "Incorrect parameter types.  Macro new-location requires a symbol and a list.")))

(defun describe-location (location nodes)
   (cadr (assoc location nodes)))

(defparameter *edges* '())
(defmacro new-path (loc edgs &optional opt1 opt2)
  "macro designed to create edges going from one location to another"
  (if (and (symbolp loc) (consp edgs))
    (if (not (assoc loc *edges*))
      (cond
        ((and (null opt1) (null opt2))
          `(push  '(,loc ,edgs) *edges*))
        ((null opt2)
          `(push  '(,loc ,edgs (,@opt1)) *edges*))
        (t
          `(push  '(,loc ,edgs (,@opt1) (,@opt2)) *edges*)))
      (format t "Paths from ~s were already generated.~%" loc))
    (println "Incorrect parameter types.  Macro new-path requires a symbol and a list.")))

(defparameter *state*)
(defun push-state ()
  (setq state ())
  (push state *objects*)
  (push state *object-locations*)
  (push state *location*)
  (push state *pi-baked*)
  (push state *bucket-filled*)
  (push state *chain-welded*)
  (push *state* state)
)
(defun pop-state()
  (setq state ())
  (push state *objects*)
  (push state *object-locations*)
  (push state *location*)
  (push state *pi-baked*)
  (push state *bucket-filled*)
  (push state *chain-welded*)
  (setq *state* state)
)

(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))

(defun describe-paths (location edges)
  (apply #'append (mapcar #'describe-path (cdr (assoc location edges)))))

(defparameter *objects* ())
(defparameter *object-locations* ())

(defmacro println (msg)
  "lets you print a line followed by a new line"
  (format t "~s~%" msg))

(defmacro new-object (loc obj)
  "macro designed to create and place objects into the game"
  (cond
    ((null loc))
    ((null obj))
    ((member loc (assoc obj *object-locations*))
      (format t "~s already exists in ~s.~%" obj loc))
    (t
      (push obj *objects*)
      (push `(,obj ,loc) *object-locations*)))
  nil)

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

(defparameter *allowed-commands* '(look walk pickup inventory help h ?))

(defun help ()
  "lists the allowed commands"
  (game-print (append '(try- ) *allowed-commands*)))

(defun h ()
  "lists the allowed commands"
  (help))

(defun ? ()
  "lists the allowed commands"
  (help))

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

(defmacro game-action (command subj obj place &body body)
  `(progn (defun ,command (subject object)
            (if (and (eq *location* ',place)
                     (eq subject ',subj)
                     (eq object ',obj)
                     (have ',subj))
                ,@body
            '(i cant ,command like that.)))
          (pushnew ',command *allowed-commands*)))

(defparameter *chain-welded* nil)

(game-action weld chain bucket attic
             (if (and (have 'bucket) (not *chain-welded*))
                 (progn (setf *chain-welded* 't)
                        '(the chain is now securely welded to the bucket.))
               '(you do not have a bucket.)))

(defparameter *bucket-filled* nil)

(game-action dunk bucket well garden
             (if *chain-welded*
                 (progn (setf *bucket-filled* 't)
                        '(the bucket is now full of water))
               '(the water level is too low to reach.)))

(game-action splash bucket wizard living-room
             (cond ((not *bucket-filled*) '(the bucket has nothing in it.))
                   ((have 'frog) '(the wizard awakens and sees that you stole his frog.
                                   he is so upset he banishes you to the
                                   netherworlds- you lose! the end.))
                   (t '(the wizard awakens from his slumber and greets you warmly.
                        he hands you the magic low-carb donut- you win! the end.))))

(defparameter *pi-baked* nil)

(game-action bake pie oven kitchen
  (if (and
        (have 'raspberry)
        (have 'ibm-keyboard)
        (have 'crt-monitor)
        (have 'pie)
        (not *pi-baked*))
    (progn
      (setf *pi-baked* 't)
      (game-print '(you put the raspberry ibm-keyboard crt-monitor and pie into the oven
            and set it to ez-bake mode. *ding* out pops a thinkpad! You are hypnotized by
            its boot animation... an unknown force guides your hands as you furiously type
            in an ancient and archaech language. all of a sudden...))
      (load "adam3595.lisp")
      (game-repl)
    )
    '(you are missing some items...)))

;; add all the locations to the game
(new-location living-room (you are in the living-room.
                                a wizard is snoring loudly on the couch.))
(new-location garden (you are in a beautiful garden.
                           there is a well in front of you.))
(new-location attic (you are in the attic.
                          there is a giant welding torch in the corner.))
(new-location kitchen (you are in the kitchen.
                            there is a beautiful chocolate cake on the table.
                            there is an oven in front of you.))
;; add all the paths to the game
(new-path living-room (garden west door)
                      (attic upstairs ladder)
                      (kitchen north door))
(new-path garden (living-room east door))
(new-path attic (living-room downstairs ladder))
(new-path kitchen (living-room south door))
;; add all the objects to the game
(new-object living-room crt-monitor)
(new-object living-room whiskey)
(new-object living-room bucket)
(new-object attic ibm-keyboard)
(new-object garden raspberry)
(new-object garden chain)
(new-object garden frog)
(new-object kitchen cake)
(new-object kitchen pie)
(game-repl)