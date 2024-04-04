const { $ } = require('@wdio/globals')
const Page = require('./page');

class MyAccountPage extends Page {

    // UI elements
    async inputUsername() {
        return $('#username'); // The field for the username
    }

    async inputPassword() {
        return $('#password'); // The field for the password
    }

    async btnSubmit() {
        return $('.woocommerce-form-login__submit'); // Submit button
    }

    async inputRegisterUsername() {
        return $('#reg_username'); // The field for the username on the registration form
    }

    async inputRegisterEmail() {
        return $('#reg_email'); // The field for the email on the registration form
    }

    async inputRegisterPassword() {
        return $('#reg_password'); // The field for the password on the registration form
    }

    async btnRegister() {
        return $('button[name="register"]'); // Register button
    }

    async loginError() {
        return $('.woocommerce-error'); // Errors during login
    }

    async logoutButton() {
        return $('.woocommerce-MyAccount-navigation-link--customer-logout'); // Logout button
    }

    async contentText() {
        return $('.woocommerce-MyAccount-content'); // Content section of the account page
    }

    //Wait for content text to be displayed


    async getContentText() {
        const contentText = await this.contentText();
        return await contentText.waitUntil(async () => await contentText.isDisplayed())
            .then(async () => await contentText.getText()); // Getting the text of the content section
    }

    async clickLogoutButton() {
        const logoutButton = await this.logoutButton();
        await logoutButton.click(); // Clicking the logout button
    }
    // Method for logging in a user
    async login (username, password) {
        const inputUsername = await this.inputUsername();
        const inputPassword = await this.inputPassword();
        const btnSubmit = await this.btnSubmit();
        await inputUsername.setValue(username); // Setting the username
        await inputPassword.setValue(password); // Setting the password
        await btnSubmit.click(); // Clicking the submit button
    }

    // Method for registering a user
    async register (username, email, password) {
        const inputRegisterUsername = await this.inputRegisterUsername();
        const inputRegisterEmail = await this.inputRegisterEmail();
        const inputRegisterPassword = await this.inputRegisterPassword();
        const btnRegister = await this.btnRegister();

        await inputRegisterUsername.setValue(username); // Setting the username
        await inputRegisterEmail.setValue(email); // Setting the email
        await inputRegisterPassword.setValue(password); // Setting the password
        await btnRegister.click(); // Clicking the register button
    }


    // create an array of all login and register elements and wait until they are displayed
    async checkUserIsOnMyAccountLoginPage() {
        // const elements = [this.inputUsername(), this.inputPassword(), this.btnSubmit(), this.inputRegisterUsername(), this.inputRegisterEmail(), this.inputRegisterPassword(), this.btnRegister()];
        const inputUsername = await this.inputUsername();
        await browser.waitUntil(
            async () => inputUsername.isDisplayed(),
            {
                timeout: 5000,
                timeoutMsg: 'expected username input to be visible after 5s'
            }
        );
    }

    //wait until login error is displayed
    async waitForLoginError() {
        const loginError = await this.loginError();
        await browser.waitUntil(
            async () => loginError.isDisplayed(),
            {
                timeout: 5000,
                timeoutMsg: 'expected error message to be visible after 5s'
            }
        );
    }

    //Get login error text
    async getLoginErrorText() {
        const loginError = await this.loginError();
        return await loginError.getText();
    }

    //Wait for logout button to be displayed
    async waitForLogoutButton() {
        const logoutButton = await this.logoutButton();
        await browser.waitUntil(
            async () => logoutButton.isDisplayed(),
            {
                timeout: 5000,
                timeoutMsg: 'expected logout button to be visible after 5s'
            }
        );
    }
    // Method for opening the page
    async open () {
        await super.open('my-account/'); // Opens the 'my-account/' page
        const inputUsername = await this.inputUsername();
        await browser.waitUntil(
            async () => inputUsername.isDisplayed(), // Waits until the username input is displayed
            {
                timeout: 5000, // The maximum wait time in milliseconds
                timeoutMsg: 'expected username input to be visible after 5s' // The message to output if the wait times out
            }
        );
    }
}

module.exports = new MyAccountPage();
