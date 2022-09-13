const myArgs = process.argv.slice(2);
const puppeteer = require('puppeteer-extra');
const pluginStealth = require('puppeteer-extra-plugin-stealth')();
puppeteer.use(pluginStealth);

function timeout(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
};

(async() => {
    const browser = await puppeteer.launch({headless:true, userDataDir: "./user_data"});
    const page = await browser.newPage();
    await page.setViewport({width: 1920, height: 1080});
    await page.goto(myArgs[0]);
    await timeout(5000)
    await page.screenshot({path: myArgs[1]});
    browser.close();
})();
