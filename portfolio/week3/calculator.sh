#!/bin/bash

#user input stage

echo "Enter two numbers: "
read a
read b 

#User chooses what mathematical operaion to apply

echo "Enter artithemtic operation: "
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read maths

case $maths in
      1) answer=`echo $a + $b | bc`;;
      2) answer=`echo $a - $b | bc`;;
      3) answer=`echo $a \* $b | bc`;;
      4) answer=`echo "scale=2; $a / $b"  | bc`;;
      *) echo "Bad input"
esac

echo "Result is: $answer"
