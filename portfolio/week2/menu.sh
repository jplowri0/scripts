#!/bin/bash


read -sp 'Enter Password: ' passCheck

echo "$passCheck" | sha256sum -c password.txt > passCheck.txt
passphrase=$(cat passCheck.txt)
echo $passphrase
if [ "$passphrase" = "-: OK" ]; then
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a Passord"
    read option;
    case $option in
      1) ./folderMaker.sh;;
      2) ./folderCopier.sh;;
      3) ./setPassword.sh;;
      *) echo "Bad input"
    esac
    exit 0
else
    echo "Access Denied"
    exit 1
fi
