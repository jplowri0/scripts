#!/bin/bash

#REF Week 4 IpAddressesOnly.sh - My (John Plowright portfolio)

userAccounts="$(./userAccounts.sh)" #This sets the output of the userAccounts.sh file as a variable ip_only

#Below we are now parsing the echo of the userAccounts.sh file three times using the sed command.
#I needed to show the header, so I ran a sed command to print all lines containing "Username". 


echo "$userAccounts" | sed -n '/Username/ { 
    s/Username/Username/
    p
    
    }'


#I then wanted to keep the heading format from the userAccounts.sh so I created a sed command looking for the 
#headin structure. 

echo "$userAccounts" | sed -n '/|______________________|_/ { 
    s/|______________________|_/|______________________|_/
    p
    
    }'

#Finally I used the sed command to only return the lines that contain /bin/bash. 

echo "$userAccounts" | sed -n '/\/bin\/bash/ { 
    s/\/bin\/bash/\/bin\/bash/
    p
    
    }'