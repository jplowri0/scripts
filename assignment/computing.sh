#!/bin/bash

#This script here computes the average of the threat rating for a particular attack vector. 
#REF: https://linuxconfig.org/calculate-column-average-using-bash-shell

average=$(awk '{ total += $1; count++ } END { print total/count }' workingData/DOSratingCode/DOSratingCodeAll.txt)
echo The average threat rating is:  $average
count=$(wc -l <workingData/DOSratingCode/DOSratingCodeAll.txt)
echo There are $count DOS threats. 

