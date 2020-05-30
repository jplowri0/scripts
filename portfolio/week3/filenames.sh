#!/bin/bash

for string in $(cat *.txt;)
do 

   
    if [[  $string == *".sh" ]]; then
        echo "$string - That file exists"
    elif [[  $string == "."* ]]; then
        echo "$string - That's a directory"    
    else
        echo "$string - I dont't know what that is"
    fi
done