#!/bin/bash

#This code below REF ME Week3 megaMenu.sh

echo "$(tput setaf 2)Apple WatchOS Vulnerability Index$(tput sgr 0)" #Colour set by bounding the "Access Granted" See REF F

fold -s intro.txt

echo "It's very important that our time keeping abilities are not threatened!!"

for ((i=0; ;++i)); do #This for loop, loops infitely until the user enters option 8 and exits the program. REF G
    echo "$(tput setaf 4) Choose a Vulnerability:$(tput sgr 0)" #Colour set by bounding the "Choose an Options" See REF F
    echo "$(tput setaf 6)1. Bypass" #Open the colour setting for the menu options. See REF F
    echo "2. Code Execution"
    echo "3. Cross Site Scripting"
    echo "4. Denial of Service"
    echo "5. Directory Traversal"
    echo "6. Gain Information"
    echo "7. Gain Privileges"
    echo "8. Memory Corruption"
    echo "9. Overflow"
    echo "10. SQL Injection$(tput sgr 0)" #Closing the colour setting for the menu options. See REF F
    echo "11. Exit"
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
    *) echo "Please check your entry and try again" #user entering an invalid option - such as "11"
    esac
done
