#!/bin/bash

echo "Beginning Web Scrape"
./scrapeInjection.sh
echo "Now Formatting the scrape"
./formattingInjection.sh
echo "Processing ........... "
cd workingData/
python injectionCSVmaker.py
cd ..
./tableInjection.sh