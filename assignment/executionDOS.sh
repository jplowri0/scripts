#!/bin/bash

echo "Beginning Web Scrape"
./scrapeDOS.sh
echo "Now Formatting the scrape"
./formattingDOS.sh
echo "Processing ........... "
cd workingData/DOScveCode/
python DOScveCodeConcatenator.py
cd ..
cd DOSratingCode/
python DOSratingCodeConcatenator.py
cd ..
cd DOSdesCode/
python DOSdesCodeConcatenator.py
cd ..
python DOScsvMaker.py
cd ..
./tableDOS.sh