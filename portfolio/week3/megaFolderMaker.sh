#!/bin/bash

#REF CYB6004 Week 3.3

#if there aren't two arguments to the script

if (( $#!=2 )); then 
    #Print error and exit
    echo "Error, provide two numbers" && exit 1
fi

#For every number between the first argument and the last

for ((i = $1; i <= $2; i++))
do 
    #Creat a new folder for that number
    echo "Creating directory number $i"
    mkdir "/student/scripts/portfolio/week$i"
done 