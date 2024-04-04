const fs = require('fs');
const glob = require('glob');
const { Reporter } = require('@reportportal/agent-js-webdriverio');
const RPClient = require('@reportportal/client-javascript');
const rpConfig  = {
    apiKey: 'wdio_oLuoAuHiT9O3vTjVXVVvwAABaFc7y1a8KjFOq1N8gEiexEfv0kebxFbhZNl27_FM',
    endpoint: 'http://localhost:8080/api/v2',
    project: 'WebdriverIO_automation_framework',
    launch: 'Test launch',
    description: 'Front-end automation tests',
    attributes: [
        {
            key: 'key',
            value: 'value',
        },
        {
            value: 'value',
        },
    ],
    isLaunchMergeRequired: true,
    attachPicturesToLogs: true,
};

exports.config = {
    runner: 'local',
    specs: [
        './test/specs/**/*.js'
    ],
    exclude: [
        // 'path/to/excluded/files'
    ],
    maxInstances: 10,
    capabilities: [{
        maxInstances: 5,
        browserName: 'chrome',
        acceptInsecureCerts: true
    }],
    logLevel: 'info',
    bail: 0,
    baseUrl: 'http://localhost:8000/',
    waitforTimeout: 10000,
    connectionRetryTimeout: 90000,
    connectionRetryCount: 3,
    framework: 'mocha',
    reporters: [[Reporter, rpConfig ]],
    mochaOpts: {
        ui: 'bdd',
        timeout: 60000
    },
    // outputDir: __dirname + '/output',
//['allure', { outputDir: 'allure-results' }]
    onComplete: async function (exitCode, config, capabilities, results) {
        if (rpConfig.isLaunchMergeRequired) {
            try {
                const client = new RPClient(rpConfig);
                await client.mergeLaunches();
                console.log('Launches successfully merged!');
            } catch (error) {
                console.error(error);
            } finally {
                const files = glob.sync('rplaunch-*.tmp');
                const deleteTempFile = (filename) => {
                    fs.unlinkSync(filename);
                };
                files.forEach(deleteTempFile);
            }
        }
    },

    //save screenshot on failure, name of screenshot should be testname+timestamp
    afterTest: async function (test, context, { error, result, duration, passed, retries }) {
        console.log("afterEach is called", passed);
        if (!passed) {
            // Await the screenshot taking and get it as base64
            const screenshot = await browser.takeScreenshot();
            // Get current timestamp
            let timestamp = Date.now();
            // Create the path and filename (test title + timestamp)
            let filename = 'screenshots/' + `${test.title.replace(/\s+/g, '_')}_${timestamp}` + '.png';

            // Create the screenshots directory if it does not exist
            if (!fs.existsSync('screenshots/')){
                fs.mkdirSync('screenshots/');
            }

            // Save the screenshot to the file
            fs.writeFileSync(filename, screenshot, 'base64');
        }
    }

}
