#!/bin/bash
source config.sh #get phone number & api key
url='https://www.target.com/p/similac-360-total-care-non-gmo-infant-formula-powder-30-8oz/-/A-86036991'
store='target'

continue=true
while $continue
do
    diff=$(node page-getter.js $url | grep -i 'get it by' | wc -l) #get the url & search for the phrase & count the phrase appearances
    
    if [ $diff -ge 1 ]; then
        curl -X POST https://textbelt.com/text --data-urlencode phone=$phone --data-urlencode message="$store formula available! $url" -d key=$apikey >> api_$store.log #send the text message
        continue=false
    fi
    
    output="$diff - $(date)" #create output for printing & log
    echo $output
    echo $output >> $store.log 
done
