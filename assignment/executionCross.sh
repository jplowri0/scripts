#!/bin/bash

echo "Beginning Web Scrape"
./scrapeCross.sh
echo "Now Formatting the scrape"
./formattingCross.sh
echo "Processing ........... "
cd workingData/
python crossCSVmaker.py
cd ..
./tableCross.sh