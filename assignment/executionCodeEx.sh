#!/bin/bash

echo "Beginning Web Scrape"
./scrapeCodeEx.sh
echo "Now Formatting the scrape"
./formattingCodeEx.sh
echo "Processing ........... "
cd workingData/codeExCveCode/
python codeExCveCodeConcatenator.py
cd ..
cd codeExRatingCode/
python codeExCveCodeConcatenator.py
cd ..
cd codeExDesCode/
python codeExDesCodeConcatenator.py
cd ..
python CodeExCSVMaker.py
cd ..
./tableCodeEx.sh