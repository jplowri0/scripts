#!/bin/bash

read -sp "$(tput setaf 1) Enter Password:$(tput sgr 0) " passCheck
echo "$passCheck" | sha256sum -c /student/scripts/portfolio/week2/password/secret.txt > passCheck.txt
passphrase=$(cat passCheck.txt)
if [ "$passphrase" = "-: OK" ]; then
    echo "$(tput setaf 2)Access Granted$(tput sgr 0)"
    for ((i=0; ;++i)); do 
        echo "$(tput setaf 4) Choose an Option:$(tput sgr 0)"
        echo "$(tput setaf 6)1. Create a folder"
        echo "2. Copy a folder"
        echo "3. Set a Passord"
        echo "4. Calculator"
        echo "5. Create Week Folders"
        echo "6. Check Filename"
        echo "7. Download a File$(tput sgr 0)"
        echo "8. Exit"
        read option;
        case $option in
        1) /student/scripts/portfolio/week2/folderMaker.sh;;
        2) /student/scripts/portfolio/week2/folderCopier.sh;;
        3) /student/scripts/portfolio/week2/setPassword.sh;;
        4) /student/scripts/portfolio/week3/calculator.sh;;
        5) /student/scripts/portfolio/week3/megaFolderMaker.sh;;
        6) /student/scripts/portfolio/week3/filenames.sh;;
        7) /student/scripts/portfolio/week3/internetDownloader.sh;;
        8) echo "Goodbye"
            exit 0;;
        *) echo "Bad input"
        esac
    done
else
    echo "No Match"
    exit 1
fi