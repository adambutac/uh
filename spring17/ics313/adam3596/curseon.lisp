;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:Wed Mar 22 16:41:53 HST 2017
;;;; Course: ICS313        Assignment:  6"
;;;; File: adam3596.lisp
(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ "Adam Butac")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;-----GLOBES------;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;misc global variables
(defparameter *nodes* '())
(defparameter *edges* '())
(defparameter *allowed-commands* '(look walk pickup inventory help h ? depth))
;;stateful variables
(defparameter *end* nil)
(defparameter *state* ())
(defparameter *initial-state* ())
;;game state variables
(defparameter *objects* ())
(defparameter *object-locations* ())
(defparameter *location* 'living-room)
(defparameter *chain-welded* nil)
(defparameter *bucket-filled* nil)
(defparameter *pi-baked* nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;-----MACROS------;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmacro new-location (loc des)
  "macro to create new locations in the game"
  (if (and (symbolp loc) (consp des))
    (if (not (assoc loc *nodes*))
      `(setq *nodes* (append *nodes* '((,loc ,des))))
      (format t "~S already exists in the game.~%" loc))
    (format t "Incorrect parameter types.  Macro new-location requires a symbol and a list.")))

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
      (format t "Paths from ~s were already generated.~%" loc))))

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

(defmacro game-action (command subj obj place &body body)
  `(progn (defun ,command (subject object)
            (if (and (eq *location* ',place)
                     (eq subject ',subj)
                     (eq object ',obj)
                     (have ',subj))
                ,@body
            '(i cant ,command like that.)))
          (pushnew ',command *allowed-commands*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;-----FUNCNS------;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun id (crsNum asnNum)
  "Print name, course number, and homework assignment number. Return nil."
  (cond
    ((and (integerp crsNum) (integerp asnNum))
      (format t "Name: ~S~%" +ID+)
      (format t "Course: ICS~D~%" crsNum)
      (format t "Assignment # ~D~%" asnNum))))

(defun describe-location (location nodes)
   (cadr (assoc location nodes)))

(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))

(defun describe-paths (location edges)
  (apply #'append (mapcar #'describe-path (cdr (assoc location edges)))))

(defun objects-at (loc objs obj-loc)
   (labels ((is-at (obj)
              (eq (cadr (assoc obj obj-loc)) loc)))
       (remove-if-not #'is-at objs)))

(defun describe-objects (loc objs obj-loc)
   (labels ((describe-obj (obj)
              `(you see a ,obj on the floor.)))
      (apply #'append (mapcar #'describe-obj (objects-at loc objs obj-loc)))))


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


(defun help ()
  "lists the allowed commands"
  (game-print (append '(try- ) *allowed-commands*)))

(defun h ()
  "lists the allowed commands"
  (help))

(defun ? ()
  "lists the allowed commands"
  (help))

(defun reset-state (s)
  "resets the current game state to a givien state s"
  (setq state s)
  (setq *objects*           (pop state))
  (setq *object-locations*  (pop state))
  (setq *location*          (pop state))
  (setq *pi-baked*          (pop state))
  (setq *bucket-filled*     (pop state))
  (setq *chain-welded*      (pop state)))

(defun get-current-state()
  "returns the current state of the game"
  (setq state `( ,*objects*
                 ,*object-locations*
                 ,*location*
                 ,*pi-baked*
                 ,*bucket-filled*
                 ,*chain-welded*)))

(defun push-state()
  "Add a state list to the list of states"
  (push (get-current-state) *state*))

(defun pop-state()
  "pop the last state from the list of states, and
  set the current game state to that state"
  (reset-state (pop *state*)))

(defun depth()
  (game-print `(you are now ,(length *state*) levels deep.)))

(defun start ()
  (terpri) (terpri) (terpri)
  (game-print '(" ^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^ "))
  (game-print '(" )                                                                           ( "))
  (game-print '("(     _/_/_/_/  _/    _/  _/_/_/      _/_/_/  _/_/_/_/    _/_/    _/      _/  )"))
  (game-print '(" )   _/        _/    _/  _/    _/  _/        _/        _/    _/  _/_/    _/  ( "))
  (game-print '("(   _/        _/    _/  _/_/_/      _/_/    _/_/_/    _/    _/  _/  _/  _/    )"))
  (game-print '(" ) _/        _/    _/  _/    _/        _/  _/        _/    _/  _/    _/_/    ( "))
  (game-print '("(   _/_/_/    _/_/    _/    _/  _/_/_/    _/_/_/_/    _/_/    _/      _/      )"))
  (game-print '(" )                                                                           ( "))
  (game-print '(" ^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^"))
  (terpri) (terpri) (terpri)
  (game-print '(welcome to CURSEON - the layer of the sleeping unix wizard! please type quietly!))
  (terpri)
  (game-print (game-eval '(look)))
  (game-repl)
)

(defun game-repl ()
  (cond
    ((not *end*)
      (let ((cmd (game-read)))
          (unless (eq (car cmd) 'quit)
            (terpri)
            (game-print (game-eval cmd))
            (game-repl))))
    ((> (length *state*) 0)
      (setq *end* nil)
      (pop-state)
      (game-print `(you are shocked to find yourself back in the ,*location* where you started.
                                   the thinkpad shuts down.)))))

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

(game-action weld chain bucket attic
             (if (and (have 'bucket) (not *chain-welded*))
                 (progn (setf *chain-welded* 't)
                        '(the chain is now securely welded to the bucket.))
               '(you do not have a bucket.)))

(game-action dunk bucket well garden
             (if *chain-welded*
                 (progn (setf *bucket-filled* 't)
                        '(the bucket is now full of water))
               '(the water level is too low to reach.)))

(game-action splash bucket wizard living-room
             (cond ((not *bucket-filled*) '(the bucket has nothing in it.))
                   ((have 'frog) (setq *end* t)
                                 '(the wizard awakens and sees that you stole his frog.
                                   he is so upset he banishes you to the
                                   netherworlds- you lose! the end.))
                   (t (setq *end* t)
                      '(the wizard awakens from his slumber and greets you warmly.
                        he hands you the magic low-carb donut- you win! the end.))))

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
      (push-state)
      (reset-state *initial-state*)
      (start)
    )
    '(you are missing some items...)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;------INITS------;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(setq *initial-state* (get-current-state))
(start)
(game-print '(Your journey has finally come to an end. Goodbye!))
