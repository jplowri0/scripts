#!/bin/bash

echo "Beginning Web Scrape"
./scrapeBypass.sh
echo "Now Formatting the scrape"
./formattingBypass.sh
echo "Processing ........... "
cd workingData/
python bypassCSVmaker.py
cd ..
./tableBypass.sh