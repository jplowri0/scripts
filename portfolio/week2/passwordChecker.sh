#!/bin/bash

#In CYB6004 Weekly Exercise 2.2 a password created using the setPassword.sh script. 
#setPassword.sh stores a hashed password in the password directory. 

read -sp 'Enter Password: ' passCheck #The user is prompted to enter their password. This is stored in the passCheck variable. 
#The contents of the passCheck are echoed and piped into the sha256sum command. Using the -c flag, this takes the input and then 
#checks the text stored in the secret.txt file. The output is either "-: OK" if matches or "-: FAILED" if no match. 
#The OK or FAILED output is then stored in a text file called passCheck.txt
echo "$passCheck" | sha256sum -c password/secret.txt > passCheck.txt #This line was helped by referring to REF H. 
passphrase=$(cat passCheck.txt) #Assigning the contents (either "-: OK" or "-: FAILED") to the passphrase variable. 
echo $passphrase
if [ "$passphrase" = "-: OK" ]; then #If the passphrase variable is "-: OK", then the "Match" string will be echoed and exited with a 0 code. 
    echo "Match"
    exit 0
else
    echo "No Match" #However, if the passphrase variable is "-: FAILED" then the "No Match" string will echo with an error code of 1. 
    exit 1
fi
