#!/bin/bash

#navigating to the portfolio directory
cd /student/scripts/portfolio/

#all sed statements
grep -r sed

#all lines that start with m
grep -r "^m"

#all lines that contain three digits
grep -r ' [0-9][0-9][0-9] '
grep -r '^[0-9][0-9][0-9] '

#all echo statements with at least three words
grep -r 'echo .*[a-z].* [a-z].* [a-z].*' 
grep -r 'echo ^[A-Z].* [a-z].* [a-z].*' 

#all lines that would make good password security i.e. using Capital,lowercase,digit and spec chars
grep -r ".*[A-Z].*"".*[a-z].*"".*[0-9].*"".*[\!\@\#\$\%\^\&\*\(\)].*"