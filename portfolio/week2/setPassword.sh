#!/bin/bash
read -p "type the name of the password folder: " folderName
mkdir "$folderName"
read -sp 'Enter Password: ' passVar
echo $passVar | sha256sum > secret.txt
mv secret.txt /student/scripts/portfolio/week2/$folderName
