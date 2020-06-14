#!/bin/bash

echo "Beginning Web Scrape"
./scrapePriveledges.sh
echo "Now Formatting the scrape"
./formattingPriveleges.sh
echo "Processing ........... "
cd workingData/
python privelegesCSVmaker.py
cd ..
./tablePriveleges.sh