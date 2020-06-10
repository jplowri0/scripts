#!/bin/bash

#This script presents the CSV data in a pretty table. 

#REF CYB6004 5.?? ?

#There is an issue with inputting a CSV file as we are missing some of the description code. 
#Need to convert it to a TSV file. OR Print $3 and beyond eg. $3 $4 $5 ... yadda yadda 

#should do the average and the NR (Number of Records) in this script here.

#can bring in a function maybe to deal with the text wrapping issue. 

awk 'BEGIN {
    FS=",";
    printf ("| \033[34m%-20s\033[0m | \033[34m%-8s\033[0m | \033[34m%-8s\033[0m |\n", "CVE No:", "Threat Rating", "Threat Description");
    print "|______________________|__________|__________|________________________________|______________________|";
}
{
    
    printf("| \033[33m%-20s\033[0m | \033[35m%-8s\033[0m | \033[35m%-8s\033[0m |\n", $1, $2, $3);
}' workingData/scrapedDOS.csv


