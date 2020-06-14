#!/bin/bash

#This script presents the CSV data in a pretty table. 

#REF CYB6004 5.?? ?

#There is an issue with inputting a CSV file as we are missing some of the description code. 
#Need to convert it to a TSV file. OR Print $3 and beyond eg. $3 $4 $5 ... yadda yadda 

#should do the average and the NR (Number of Records) in this script here.

#can bring in a function maybe to deal with the text wrapping

awk 'BEGIN {
    FS="\t";
    
    
}
{
    

    printf("CVE Number: \033[33m%-20s\033[0m \nThreat Score: \033[31m%-8s\033[0m \nThreat Description: \033[35m%s$\n\033[0m \n", $1, $2, $3);

}' workingData/scrapedBypassTSV.txt


#This script here computes the average of the threat rating for a particular attack vector and also generates a count. 
#REF: https://linuxconfig.org/calculate-column-average-using-bash-shell

average=$(awk '{ total += $1; count++ } END { print total/count }' workingData/bypassRatingCode/bypassRatingCode1.txt)
echo The average threat rating is:  $average
count=$(wc -l <workingData/bypassRatingCode/bypassRatingCode1.txt)
echo There are $count Bypass threats.

#Below we are giving the user the option to export a CSV. 
#REF Week 2 folderCopier.sh & Week 3 internetDownloader.sh
for ((i=0; ;++i)); do 
    read -p "Would you like to export a CSV file? Y/N: " choice
    if [ $choice == Y ]; then
        #Checking for the existance of the directory. 
        read -p "type the destination: " destination
        if [ -d "$destination" ]; then
            cp workingData/scrapedBypass.csv $destination
            echo "Success Exported to $destination"
            echo "Good bye"
            exit 0
        else 
            echo "No directory exits"
        fi
    elif [ $choice == N ]; then 
        echo "Au Revior"
        exit 0
    else
        #otherwise, print an error
        echo "That choice does not make sense. Please enter Y or N"
	fi
done 