const { $$, $ } = require('@wdio/globals')
const Page = require('./page');

class CheckoutPage extends Page {

    // Returns the email address input field of the contact information section
    async contactInformationEmailAddress() {
        return $('#email');
    }

    // Returns the first name input field of the billing address section
    async billingAddressFirstName() {
        return $('#billing-first_name');
    }

    // Returns the last name input field of the billing address section
    async billingAddressLastName() {
        return $('#billing-last_name');
    }

    // Returns the company name input field of the billing address section
    async billingAddressCompany() {
        return $('#billing-company');
    }

    // Returns the address line1 input field of the billing address section
    async billingAddressAddress1() {
        return $('#billing-address_1');
    }

    // Returns the address line2 input field of the billing address section
    async billingAddressAddress2() {
        return $('#billing-address_2');
    }

    // Returns the city input field of the billing address section
    async billingAddressCity() {
        return $('#billing-city');
    }

    // Returns the state input field of the billing address section
    async billingAddressState() {
        return $('#billing-state');
    }

    // Returns the postcode input field of the billing address section
    async billingAddressPostcode() {
        return $('#billing-postcode');
    }

    // Returns the phone number input field of the billing address section
    async billingAddressPhone() {
        return $('#billing-phone');
    }

    // Returns the createAccount checkbox in the checkout page
    async createAccountCheckbox() {
        return $('#createaccount');
    }

    // Returns the password input field of the account creation section
    async createAccountPassword() {
        return $('#account_password');
    }

    // Returns the order notes checkbox in the checkout page
    async orderNotesCheckbox() {
        return $('.wc-block-checkout__add-note .wc-block-components-checkbox__input');
    }

    // Similar functions exist for the shipping address details

    // Returns the country select list in the checkout page
    async countrySelect() {
        return $('input#components-form-token-input-0');
    }

    // Returns the place order button in the checkout page
    async placeOrderButton() {
        return $('.wc-block-components-checkout-place-order-button');
    }

    // Returns the order number field present after the order is placed
    async orderNumber() {
        return $('.order strong');
    }

    // Returns the order received message field displayed after the order is placed
    async orderReceivedMessage() {
        return $('p.woocommerce-notice');
    }

    // Opens the checkout page by calling the open function from the Page class
    async open() {
        await super.open('checkout');
    }

    // Waits for the order received message to be displayed
    // If the message is not displayed within 10s, timeoutMsg will be printed
    async waitForOrderReceivedMessage() {
        const orderReceivedMessage = await this.orderReceivedMessage();
        await browser.waitUntil(
            async () => orderReceivedMessage.isDisplayed(),
            {
                timeout: 10000,
                timeoutMsg: 'expected order received message to be displayed after 10s'
            }
        );
    }

    // Returns the text of the order number
    async getOrderNumber() {
        const orderNumber = await this.orderNumber();
        return await orderNumber.getText();
    }

    // Waits for the checkout page to load by waiting for the place order button to be displayed
    async waitForCheckoutPageToLoad() {
        const placeOrderButton = await this.placeOrderButton();
        await browser.waitUntil(
            async () => placeOrderButton.isDisplayed(),
            {
                timeout: 10000,
                timeoutMsg: 'expected checkout page to load after 5s'
            }
        );
    }

    // Fills the checkout form fields with provided details
    async fillCheckoutForm(virtualProduct, firstName, lastName, email, phone, address1, city, postcode, country, state) {
        // Logic for filling the form
    }

    // Clicks the place order button to place the order
    async placeOrder() {
        const placeOrderButton = await this.placeOrderButton();
        await browser.waitUntil(async () =>
                await placeOrderButton.isDisplayed() && await placeOrderButton.isEnabled(),
            { timeout: 5000 });
        await placeOrderButton.click();
    }
}

// Export an instance of the CheckoutPage class
module.exports = new CheckoutPage();