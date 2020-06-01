#!/bin/bash

#The below script utilises the printf which allows us to apply formatting codes to our awk request (CYB6004 Wk5.5.1 Avanced AWK Features - Rob McKnight)
#Colours have been applied to the cell headers by utilising the colour code. 
#This script below is largely based upon CYB6004 Exercise 5.4 Step 4.
#The passwd file uses the ":" as field seperators which I have applied on line 12 
#Lines 14 and 15, are the table header, where line 10, formats the colour and width and the text content is applied after the formatting of the header cells. Line 15 is simply the header border. 
#Line 18 like line 14, applies the formatting options such as colour and width and the field content is specified after the formatting commands. 
#Using $n (where n is the field number) we can return the desired field and skip unwanted fields. 
#Lines 14 and 18 where completed by referring to: REF C. 

awk 'BEGIN {
    FS=":";
    printf ("| \033[34m%-20s\033[0m | \033[34m%-8s\033[0m | \033[34m%-8s\033[0m | \033[34m%-30s\033[0m | \033[34m%-20s\033[0m |\n", "Username", "User ID", "Group ID", "Home", "Shell");
    print "|______________________|__________|__________|________________________________|______________________|";
}
{
    printf("| \033[33m%-20s\033[0m | \033[35m%-8s\033[0m | \033[35m%-8s\033[0m | \033[35m%-30s\033[0m | \033[35m%-20s\033[0m |\n", $1, $3, $4, $6, $7);
}' /etc/passwd

#So far, this returns for every line in the passwd file. Below is used to now filter out the rows that are not using /bin/bash as the shell. 
