#!/bin/bash

echo "Beginning Web Scrape"
./scrapeOverflow.sh
echo "Now Formatting the scrape"
./formattingOverflow.sh
echo "Processing ........... "
cd workingData/overflowCVECode/
python overflowCVEcodeConcatenator.py
cd ..
cd overflowRatingCode/
python overflowRatingCodeConcatenator.py
cd ..
cd overflowDesCode/
python overflowDesCodeConcatenator.py
cd ..
python overflowCSVMaker.py
cd ..
./tableOverflow.sh