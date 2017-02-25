#!/bin/zsh

cat <<EOF > derp.txt
f='adam359'$1
mkdir $f
cd $f
echo ";;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-" >> $f.lisp 
echo ";;;; Name: Adam Butac                               Date:$(date)" >> $f.lisp
echo ";;;; Course: ICS313        Assignment:  $1"  >> $f.lisp
echo ";;;; File: $f.lisp" >> $f.lisp
echo -e "\n(in-package :User) ; optional - this is also in the header above" >> $f.lisp
echo "(defconstant +ID+ \"Adam Butac\")" >> $f.lisp
EOF 
