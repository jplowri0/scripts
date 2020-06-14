#!/bin/bash

echo "Beginning Web Scrape"
./scrapeMemory.sh
echo "Now Formatting the scrape"
./executionMemory.sh
echo "Processing ........... "
cd workingData/memoryCVECode/
python memoryCVECodeConcatenator.py
cd ..
cd memoryRatingCode/
python memoryRatingCodeConcatenator.py
cd ..
cd memoryDesCode/
python memoryDesCodeConcatenator.py
cd ..
python memoryCSVmaker.py
cd ..
./tableMemory.sh