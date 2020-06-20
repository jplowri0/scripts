#!/bin/bash

inputText="$( cat sampletext.txt )"

echo "$inputText" | sed -e 's/system/computer/; s/ operating//' sampletext.txt > newText.txt
