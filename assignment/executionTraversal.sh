#!/bin/bash

echo "Beginning Web Scrape"
./scrapeTraversal.sh
echo "Now Formatting the scrape"
./formattingTraversal.sh
echo "Processing ........... "
cd workingData/
python traversalCSVmaker.py
cd ..
./tableTraversal.sh