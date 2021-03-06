#!/bin/bash

#this vesion a adds in a loop. 

#REF CYB6004 4.5 video. 

for ((i=1;i<3;++i)); do 
    inputData="$( cat scrapedData/Information/watchOSinformation$i.html )"

    echo "$inputData" | sed -n '/<td nowrap/ { 
        s/										// 
        s/<td nowrap><a href=\"\/cve\///
        s/\/\"  title=\"CVE.*//

        p
        }' > workingData/informationCVECode/informationCVEcode$i.txt

    #This sed fucmtion retrieves the CVE number. 
    #top line of sed function deals with spacing 
    #next line down removes all text prior the CVE number
    #bottom line removes all text after the CVE number 
    #The result is saved to the CVEcode.txt

    #Similarly, the code below is extracthing the risk score to the RatingCode.txt file. 

    echo "$inputData" | sed -n '/					<td><div class=/ { 
        s/					<td><div class=\"cvssbox\" style=\"background-color:#\w\w\w\w\w\w\">//
        s/<\/div><\/td>//
        p
        }' > workingData/informationRatingCode/informationRatingCode$i.txt

    #Below, this sed command pulls out the vulnerability description which spans across multiple lines. 
    #REF https://www.thegeekstuff.com/2009/11/unix-sed-tutorial-multi-line-file-operation-with-6-practical-examples/

    echo "$inputData" | sed -n '/					<td class=\"cvesummarylong\" colspan=\"20\">/ { 
        s/					<td class=\"cvesummarylong\" colspan=\"20\">//
        N
        s/\n						//
        s/					<\/td>//
        p	
        }' > workingData/informationDesCode/informationDesCode$i.txt

done
    #This only does one page. Still need to set this up to scrape in a loop and for different attack vectors. 

