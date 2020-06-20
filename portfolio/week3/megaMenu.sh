#!/bin/bash

#Lines 5 - 8 & 34 - 37 are from the passwordChecker.sh script made in Week 2 by myself. This checks the password set in Week 2 and if correct the the Mega Menu will run. 
#If incorrect, then the "No Match" statement will be echoed. 
read -sp "$(tput setaf 1) Enter Password:$(tput sgr 0) " passCheck #Colour set by bounding the "Enter Password". See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
echo "$passCheck" | sha256sum -c /student/scripts/portfolio/week2/password/secret.txt > passCheck.txt
passphrase=$(cat passCheck.txt)
if [ "$passphrase" = "-: OK" ]; then
    echo "$(tput setaf 2)Access Granted$(tput sgr 0)" #Colour set by bounding the "Access Granted" See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
    for ((i=0; ;++i)); do #This for loop, loops infitely until the user enters option 8 and exits the program. REF https://stackoverflow.com/questions/31625794/infinite-for-loop-with-bashs
        echo "$(tput setaf 4) Choose an Option:$(tput sgr 0)" #Colour set by bounding the "Choose an Options" See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
        echo "$(tput setaf 6)1. Create a folder" #Open the colour setting for the menu options. See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
        echo "2. Copy a folder"
        echo "3. Set a Passord"
        echo "4. Calculator"
        echo "5. Create Week Folders"
        echo "6. Check Filename"
        echo "7. Download a File$(tput sgr 0)" #Closing the colour setting for the menu options. See REF https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
        echo "8. Exit"
        read option;
        case $option in #The case options allows for user to make a choice. 
        1) /student/scripts/portfolio/week2/folderMaker.sh;;
        2) /student/scripts/portfolio/week2/folderCopier.sh;;
        3) /student/scripts/portfolio/week2/setPassword.sh;;
        4) /student/scripts/portfolio/week3/calculator.sh;;
        5) /student/scripts/portfolio/week3/megaFolderMaker.sh;;
        6) /student/scripts/portfolio/week3/filenames.sh;;
        7) /student/scripts/portfolio/week3/internetDownloader.sh;;
        8) echo "Goodbye"
            exit 0;; #user deciding to quit the program. 
        *) echo "Bad input" #user entering an invalid option - such as "11"
        esac
    done
else
    echo "No Match" #This else statement is run if the passphrase does not match and exits with an error code of 1. 
    exit 1
fi