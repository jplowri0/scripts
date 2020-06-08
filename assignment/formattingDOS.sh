#!/bin/bash

inputData="$( cat scrapedData/watchOSdos1.html )"

echo "$inputData" | sed -n '/<td nowrap/ { 
    s/										// 
    s/<td nowrap><a href=\"\/cve\/// 
    s/\/\"  title=\"CVE.*//
    
    p
    }' > CVEcode.txt

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
    }' > RatingCode.txt


