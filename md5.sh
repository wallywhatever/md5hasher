#!/bin/bash
echo "Retrieving HTML..."
HTML=$(curl -s -c cookies.txt http://68.183.36.140:32433/)
echo -e "----------------------------------------------------\n $HTML----------------------------------------------------"
echo "Grabbing string..."
# use grep to extract the target string from the HTML
PLAINTXT=$(echo $HTML | grep -E '(\w){20}' -o)
echo "Plaintext:" $PLAINTXT
# Hash the target with md5 and then make sure only the hash is selected
HASH=$(echo -n $PLAINTXT | md5sum | grep -E '(\w){32}' -o)
echo "Hash:" $HASH
echo "Sending..."
echo "----------------------------------------------------"
curl -b cookies.txt -d "hash=$HASH" http://68.183.36.140:32433 #--proxy http://127.0.0.1:8080
