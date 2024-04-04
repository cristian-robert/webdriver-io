const { $$, $ } = require('@wdio/globals')
const Page = require('./page');

class CheckoutPage extends Page {
    async contactInformationEmailAddress() {
        return $('#email');
    }

    async billingAddressFirstName() {
        return $('#billing-first_name');
    }

    async billingAddressLastName() {
        return $('#billing-last_name');
    }

    async billingAddressCompany() {
        return $('#billing-company');
    }

    async billingAddressAddress1() {
        return $('#billing-address_1');
    }

    async billingAddressAddress2() {
        return $('#billing-address_2');
    }

    async billingAddressCity() {
        return $('#billing-city');
    }

    async billingAddressState() {
        return $('#billing-state');
    }

    async billingAddressPostcode() {
        return $('#billing-postcode');
    }

    async billingAddressPhone() {
        return $('#billing-phone');
    }

    async createAccountCheckbox() {
        return $('#createaccount');
    }

    async createAccountPassword() {
        return $('#account_password');
    }

    async orderNotesCheckbox() {
        return $('.wc-block-checkout__add-note .wc-block-components-checkbox__input');
    }

    async shippingAddressFirstName() {
        return $('#shipping-first_name');
    }

    async shippingAddressLastName() {
        return $('#shipping-last_name');
    }

    async shippingAddressCompany() {
        return $('#shipping-company');
    }

    async shippingAddressCountry() {
        return $('#shipping-country');
    }

    async shippingAddressAddress1() {
        return $('#shipping-address_1');
    }

    async shippingAddressAddress2() {
        return $('#shipping-address_2');
    }

    async shippingAddressCity() {
        return $('#shipping-city');
    }

    async shippingAddressState() {
        return $('#shipping-state');
    }

    async shippingAddressPostcode() {
        return $('#shipping-postcode');
    }

    async shippingAddressPhone() {
        return $('#shipping-phone');
    }

    async useSameAddressCheckbox() {
        return $('.wc-block-checkout__use-address-for-billing .wc-block-components-checkbox__input')
    }

    async countrySelect() {
        return $('input#components-form-token-input-0');
    }


    async placeOrderButton() {
        return $('.wc-block-components-checkout-place-order-button');
    }

    async orderNumber() {
        return $('.order strong');
    }
    async orderReceivedMessage() {
        return $('p.woocommerce-notice');
    }

    async orderNotesComments() {
        return $('.wc-block-components-textarea');
    }
    async open() {
        await super.open('checkout');
    }

    // wait for order received message to be displayed
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

    async getOrderNumber() {
        const orderNumber = await this.orderNumber();
        return await orderNumber.getText();
    }

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
    // fill checkout form
    async fillCheckoutForm(virtualProduct, firstName, lastName, email, phone, address1, city, postcode, country, state) {
        const billingAddressFirstName = await this.billingAddressFirstName();
        const billingAddressLastName = await this.billingAddressLastName();
        const contactInformationEmailAddress = await this.contactInformationEmailAddress();
        const billingAddressPhone = await this.billingAddressPhone();
        const billingAddressAddress1 = await this.billingAddressAddress1();
        const billingAddressCity = await this.billingAddressCity();
        const billingAddressPostcode = await this.billingAddressPostcode();
        const countrySelect = await this.countrySelect();
        const billingState = await this.billingAddressState();

        const shippingAddressFirstName = await this.shippingAddressFirstName();
        const shippingAddressLastName = await this.shippingAddressLastName();
        const shippingAddressAddress1 = await this.shippingAddressAddress1();
        const shippingAddressCity = await this.shippingAddressCity();
        const shippingAddressPostcode = await this.shippingAddressPostcode();
        const shippingAddressPhone = await this.shippingAddressPhone();
        const shippingAddressState = await this.shippingAddressState();
        const orderNotes = await this.orderNotesCheckbox();
        const orderNotesComments = await this.orderNotesComments();
        const useSameAddressCheckbox = await this.useSameAddressCheckbox();

        if(virtualProduct) {
            await billingAddressFirstName.setValue(firstName);
            await billingAddressLastName.setValue(lastName);
            await contactInformationEmailAddress.setValue(email);
            await billingAddressPhone.setValue(phone);
            await billingAddressAddress1.setValue(address1);
            await billingAddressCity.setValue(city);
            await countrySelect.setValue(country);
            await browser.keys('\uE007');
            await billingState.setValue(state);
            await browser.keys('\uE007');
            await billingAddressPostcode.setValue(postcode);
        }
        else {
            await contactInformationEmailAddress.setValue(email);
            await shippingAddressFirstName.setValue(firstName);
            await shippingAddressLastName.setValue(lastName);
            await shippingAddressAddress1.setValue(address1);
            await shippingAddressCity.setValue(city);
            await shippingAddressPhone.setValue(phone);
            await countrySelect.setValue(country);
            await browser.keys('\uE007');
            await shippingAddressState.setValue(state);
            await browser.keys('\uE007');
            await shippingAddressPostcode.setValue(postcode);
            await useSameAddressCheckbox.click();
        }

        await orderNotes.click();
        await orderNotesComments.setValue('Please deliver before 5pm');
    }

    //place order
    async placeOrder() {
        const placeOrderButton = await this.placeOrderButton();

        await browser.waitUntil(async () =>
                await placeOrderButton.isDisplayed() && await placeOrderButton.isEnabled(),
            { timeout: 5000 });

        await placeOrderButton.click();
    }
}
module.exports = new CheckoutPage();