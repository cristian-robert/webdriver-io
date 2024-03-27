// Load required packages
const faker = require('@faker-js/faker').fakerEN_GB;
const { expect } = require('@wdio/globals');

// Load modules for handling different pages
const homePage = require('../pageobjects/home.page');
const cartPage = require('../pageobjects/cart.page');
const checkoutPage = require('../pageobjects/checkout.page');
const constants = require('../utils/constants');

// Load a module for utils queries
const databaseQuery = require('../utils/database.query');

// This is the main test suite
describe('e2e checkout as guest user', () => {

    // Single test scenario
    it('should add product to cart and checkout as guest user', async () => {

        // Define necessary details for a test user
        const country = 'United Kingdom';
        const ukZipCode = 'SW1A 1AA';
        const firstName = faker.person.firstName();
        const lastName = faker.person.lastName();
        const email = faker.internet.email();
        const phone = faker.phone.number();
        const address = faker.location.streetAddress();
        const city = 'London';
        const state = faker.location.state();

        // Open the home page
        await homePage.open();

        // Add a product to the cart
        await homePage.clickRandomAddToCartButton();

        // Go to checkout process
        // Check that cart has 1 item and proceed
        await homePage.waitForCartHeaderCount(1);
        await homePage.clickCartHeader();
        // Check again that there is only one product in the cart
        await cartPage.waitForCartItemsCount(1);
        await cartPage.applyCoupon(constants.couponCode);
        await cartPage.checkDiscountCodeApplied(constants.couponCode);

        // Depending on the product type, fill out the form differently
        if (await cartPage.checkProductDescriptionContainsVirtual(0)) {
            await cartPage.clickProceedToCheckoutButton();
            await checkoutPage.waitForCheckoutPageToLoad();
            await checkoutPage.fillCheckoutForm(true, firstName, lastName, email,
                phone, address, city, ukZipCode, country, state);
        } else {
            await cartPage.clickFreeShippingRadio();
            await cartPage.clickProceedToCheckoutButton();
            await checkoutPage.waitForCheckoutPageToLoad();
            await checkoutPage.fillCheckoutForm(false, firstName, lastName, email,
                phone, address, city, ukZipCode, country, state);
        }

        // Complete the order
        await checkoutPage.placeOrder();
        await checkoutPage.waitForOrderReceivedMessage();

        // Verify that the order is received and then processed correctly in the utils
        const orderNumber = await checkoutPage.getOrderNumber();
        await databaseQuery.connect();
        const sql = `SELECT * FROM wp_wc_orders WHERE id = ${orderNumber}`;
        const [rows, fields] = await databaseQuery.query(sql);
        //get billing_email column from result
        const billingEmail = rows[0].billing_email;

        // Check that customer provided email and DB email are same
        expect(billingEmail).toEqual(email);

        // Close the utils connection
        await databaseQuery.disconnect();
    });
});