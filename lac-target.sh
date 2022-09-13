#!/bin/bash

source config.sh

url='https://www.target.com/p/similac-360-total-care-non-gmo-infant-formula-powder-30-8oz/-/A-86036991'
store='target'


if [ -f "fresh_$store.png" ]; then #Make sure we have a screenshot
    mv fresh_$store.png old_$store.png
    node screenshot.js $url "fresh_$store.png"
    diff=$(compare -metric ae old_$store.png fresh_$store.png null: 2>&1) #use imagemagick to count the pixels that are different between the screenshots
else #no screenshot let's shoot one
    node screenshot.js $url "fresh_$store.png"
    diff=0
    echo "fresh screenshot not found" >> $store.log
fi


if [ $diff -gt 50 ]; then
    echo "big diff: $diff"
    curl -X POST https://textbelt.com/text --data-urlencode phone=$phone --data-urlencode message="$store Formula page changed $diff pixels. Buy: $url" -d key=$apikey #send the text message
    echo "text message sent"
else
    echo "lil diff: $diff"
fi


echo "$diff - $(date)" >> $store.log