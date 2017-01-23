#!/bin/zsh
echo ";;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-" >> $1.lisp 
echo ";;;; Name: Adam Butac                               Date:$(date)" >> $1.lisp
echo ";;;; Course: ICS313        Assignment:  $2"  >> 1$.lisp
echo ";;;; File: $1.lisp" >> $1.lisp
echo -e "\n(in-package :User) ; optional - this is also in the header above" >> $1.lisp


