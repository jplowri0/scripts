#!/bin/bash

echo "Beginning Web Scrape"
./scrapeInformation.sh
echo "Now Formatting the scrape"
./formattingInformation.sh
echo "Processing ........... "
cd workingData/informationCVECode/
python informationCVECodeConcatenator.py
cd ..
cd informationRatingCode/
python informationRatingCodeConcatenator.py
cd ..
cd informationDesCode/
python informationDesCodeConcatenator.py
cd ..
python informationCSVmaker.py
cd ..
./tableInformation.sh