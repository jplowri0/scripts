#!/bin/bash

ip_only="$(./IpInfo.sh)" #This sets the output of the IpInfo.sh file as a variable ip_only

#Below we are now parsing the echo of the ipIndo.sh file in the sed command where we
#are ignoring all lines in the output other than those containimg IP Address: This is done with the -n flag. 
#Next using the substitute command 's/' we are replacing spaces in front of "IP Address:" (from the IpInfo.sh) and
#removing the spaces. 
#As the -n flag ignores all lines, we must use the p command to print the lines that contain "IP Address:". 
echo "$ip_only" | sed -n '/IP Address:/ { 
    s/        IP Address:/IP Address:/
    p
    
    }'