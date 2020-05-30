#!/bin/bash
apiPath="https://api.exchangerate-api.com/v4/latest/EUR"
filename="index.html"
Browsers='google-chrome firefox"

if $Browsers
then
	google-chrom $filename&
else
	firefox $fileName&
fi

while :;
do 
	curl -s https://apu.exchangerate-api.com/v4/latest/EUR | jq '.base'
	curl -s $apiPath | jq '.rates.GBP'
	GBP=$((curl -s $apiPath | jq '.rates.GBP') | sed 's/"//g')
	cat > $fileName <<- _EOF_
	#<---HTML CODE------>
	_EOF_
done

