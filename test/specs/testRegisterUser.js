//test for register user
// Start by requiring necessary packages
// We are using "@faker-js/faker" to generate random user name and password, and "@wdio/globals" to use expect assertions
const faker = require('@faker-js/faker').faker;
const { expect } = require('@wdio/globals');
const myAccountPage = require('../pageobjects/myAccount.page');
// Use Faker.js to generate a random username, email and password
const username = faker.internet.userName();
const email = faker.internet.email();
const password = faker.internet.password();

// Start of describing a test suite for "Register to ecommerce application"
describe('Register to ecommerce application', () => {

    it('should register a new user', async () => {

        // Open the My Account page
        await myAccountPage.open();


        // Attempt to register a new user with the random username, email and password
        await myAccountPage.register(username, email, password);

        await myAccountPage.waitForLogoutButton();
        // Expect the content text to contain the username
        expect(await myAccountPage.getContentText()).toContain(`Hello ${username}`);
    });

    it('should logout a user', async () => {
        // Click on the logout button
        await myAccountPage.clickLogoutButton();
        // Wait for the login button to be displayed in the application
        // Time out after waiting for 5 seconds and display error message if login button is not visible
        await myAccountPage.checkUserIsOnMyAccountLoginPage();
    });
});
