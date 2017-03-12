#!/bin/zsh

mkdir adam359$1
cat <<EOF > adam359$1/adam359$1.lisp
;;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
;;;; Name: Adam Butac                               Date:$(date)
;;;; Course: ICS313        Assignment:  $1"
;;;; File: adam359$1.lisp
(in-package :User) ; optional - this is also in the header above
(defconstant +ID+ \"Adam Butac\")
EOF
