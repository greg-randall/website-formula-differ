# website-formula-differ

Make sure NPM & Node are installed.

Install Puppeteer & some extra stealthy bits (Puppeteer [info found on baeldung.com](https://www.baeldung.com/linux/command-line-website-screenshots#1-puppeteer-high-level-api-to-control-chrome-or-chromium)):
```
npm install puppeteer puppeteer-extra puppeteer-extra-plugin-stealth
```

Duplicate blank-config.sh & rename to config.sh. Add your phone number & api key from https://textbelt.com to config.sh.

lac-target.sh will run in a loop until it sees that there's formua available, it'll send a text message, and then exit.

For other retailers, you'll need to replace 'get it by' with some phrase that only appears when the formula is available -- 'buy it now' or somesuch. 
