# website-formula-differ

Make sure NPM, Node, & ImageMagick are installed.

Install Puppeteer & some extra stealthy bits (Puppeteer [info found on baeldung.com](https://www.baeldung.com/linux/command-line-website-screenshots#1-puppeteer-high-level-api-to-control-chrome-or-chromium)):
```
npm install puppeteer puppeteer-extra puppeteer-extra-plugin-stealth
```

Duplicate blank-config.sh & rename to config.sh. Add your phone number & api key from https://textbelt.com to config.sh.

Add your script to Cron, changing the folder as needed:
```
crontab -e
```

```
* * * * * cd /mnt/e/folder/ && /usr/bin/bash lac-target.sh
```



To monitor some other website, copy & rename 'lac-target.sh' and edit the url & store lines. Add the new script to Cron.
