#!/bin/bash
#REF CYB6004 Week 2.2 
read -p "type the name of the password folder: " folderName #User enters the name of the password folder which is stored in the variable folderName
mkdir "$folderName" #a durectory is now created using the what ever the user entered into the folderName variable. 
read -sp 'Enter Password: ' passVar #A password is now stored in plain text in the passVar variable. The -s flag hides the entered text. 
echo $passVar | sha256sum > secret.txt #The passVar is echoed and piped into the sha256sum command. The sha256sum command then hashes the passVar variable 
#and creates a text file called secret.txt and stores the hashed result in secret.txt
mv secret.txt /student/scripts/portfolio/week2/$folderName #The secret.txt is moved into the folder created in line 3. 
