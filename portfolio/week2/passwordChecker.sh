#!/bin/bash

read -sp 'Enter Password: ' passCheck

echo "$passCheck" | sha256sum -c password/secret.txt > passCheck.txt
passphrase=$(cat passCheck.txt)
echo $passphrase
if [ "$passphrase" = "-: OK" ]; then
    echo "Match"
    exit 0
else
    echo "No Match"
    exit 1
fi
