#!/bin/bash

#This code below REF ME Week3 megaMenu.sh

echo "$(tput setaf 3)Apple WatchOS Vulnerability Index$(tput sgr 0)" #Colour set by bounding the "Access Granted" See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

fold -s intro.txt #The text is wrapped where each line has a maximum of 80 characters. Complete words are push to the next line if such a word goes over 80 charchters. 

echo "It's very important that our time keeping abilities are not threatened!!"

for ((i=0; ;++i)); do #This for loop, loops infitely until the user enters option 11 and exits the program. REF https://stackoverflow.com/questions/31625794/infinite-for-loop-with-bash
    echo "$(tput setaf 5) Choose a Vulnerability:$(tput sgr 0)" #Colour set by bounding the "Choose an Options" See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
    echo "$(tput setaf 6)1. Bypass" #Open the colour setting for the menu options. See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
    echo "2. Code Execution"
    echo "3. Cross Site Scripting"
    echo "4. Denial of Service"
    echo "5. Directory Traversal"
    echo "6. Gain Information"
    echo "7. Gain Privileges"
    echo "8. Memory Corruption"
    echo "9. Overflow"
    echo "10. SQL Injection" #Closing the colour setting for the menu options. See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
    echo "11. Exit$(tput sgr 0)"
    read option;
    case $option in #The case options allows for user to make a choice. 
    1) ./executionBypass.sh;;
    2) ./executionCodeEx.sh;;
    3) ./executionCross.sh;;
    4) ./executionDOS.sh;;
    5) ./executionTraversal.sh;;
    6) ./executionInformation.sh;;
    7) ./executionPriveleges.sh;;
    8) ./executionMemory.sh;;
    9) ./executionOverflow.sh;;
    10) ./executionInjection.sh;;
    11) echo "Auf Wiedersehen"
        exit 0;; #user deciding to quit the program. 
    *) echo "Please check your entry and try again" #user entering an invalid option - such as "12"
    esac
done
