
const faker = require('@faker-js/faker').faker;
const { expect } = require('@wdio/globals');

const myAccountPage = require('../pageobjects/myAccount.page');

// Start of describing a test suite for "Login to ecommerce application"
describe('Login to ecommerce application', () => {

    // Individual test case description - "should not login with invalid credentials"
    it('should not login with invalid credentials', async () => {

        // Open the My Account page
        await myAccountPage.open();

        // Use Faker.js to generate a random username and password
        const username = faker.internet.userName();
        const password = faker.internet.password();

        // Attempt to login with the random username and password
        await myAccountPage.login(username, password);

        // Wait for the error message to be displayed in the application
        // Time out after waiting for 5 seconds and display error message if error message is not visible
        await browser.waitUntil(
            async () => myAccountPage.loginError.isDisplayed(),
            {
                timeout: 5000,
                timeoutMsg: 'expected error message to be visible after 5s'
            }
        );

        // Verify that the error message is as expected by asserting that it contains the specific message
        // If the text is not as expected, it will throw an error and fail the test case
        expect(await myAccountPage.loginError.getText()).toContain(`Error: The username ${username} is not` +
            ' registered on this site. If you are unsure of your username, try your email address instead.');
    });
});