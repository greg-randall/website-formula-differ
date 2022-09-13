# website-formula-differ

Make sure NPM, Node, & ImageMagick.

Install Puppeteer & some extra stealthy bits:
npm install puppeteer puppeteer-extra puppeteer-extra-plugin-stealth
(https://www.baeldung.com/linux/command-line-website-screenshots#1-puppeteer-high-level-api-to-control-chrome-or-chromium)

Duplicate blank-config.sh & rename to config.sh
Add your phone number & api key from https://textbelt.com to config.sh.

Add your script to cron:
crontab -e
* * * * * cd /mnt/e/folder/ && /usr/bin/bash lac-target.sh
