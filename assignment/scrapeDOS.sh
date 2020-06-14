#!/bin/bash

#REF E

#Below uses a for loop to scrape mulitple of pages. This is due to that there are only 50 records per page. So we must cycle through each 
#page in order to get all the data. I set a range for page 1 to page 6 as there are only 6 pages. 
#The files are renamed to watchOSdos.html for clarity and are saved in the scrapedData directory. 

for ((i=1;i<7;++i)); do 
    wget "https://www.cvedetails.com/vulnerability-list.php?vendor_id=49&product_id=32536&version_id=&page=$i&hasexp=0&opdos=1&opec=0&opov=0&opcsrf=0&opgpriv=0&opsqli=0&opxss=0&opdirt=0&opmemc=0&ophttprs=0&opbyp=0&opfileinc=0&opginf=0&cvssscoremin=0&cvssscoremax=0&year=0&month=0&cweid=0&order=1&trc=268&sha=1d1222966d7d806946195eced2cf2173dc2e3baa" -O scrapedData/DOS/watchOSdos$i.html
done
