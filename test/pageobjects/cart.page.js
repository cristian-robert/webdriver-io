const { $$, $ } = require('@wdio/globals')
const Page = require('./page');

class CartPage extends Page {
    async cartItems() {
        return $$('.wc-block-cart-items__row');
    }

    async discountCodeApplied(){
        return $('.wc-block-components-chip__text');
    }
    async addCouponButton() {
        return $('.wc-block-components-totals-coupon-link');
    }

    async addCouponInput() {
        return $('#wc-block-components-totals-coupon__input-0');
    }

    async applyCouponButton() {
        return $('.wc-block-components-totals-coupon__button');
    }

    async proceedToCheckoutButton() {
        return $('.wc-block-cart__submit-button');
    }

    async freeShippingRadio() {
        return $('#radio-control-0-free_shipping\\:4');
    }

    async productDescription() {
        return $$('.wc-block-components-product-metadata__description');
    }

    async waitForCartItemsCount(count) {
        const cartItems = await this.cartItems();
        await browser.waitUntil(
            async () => cartItems.length === count,
            {
                timeout: 5000,
                timeoutMsg: `expected ${count} items in cart after 5s`
            }
        );
    }

    async applyCoupon(coupon) {
        const addCouponButton = await this.addCouponButton();
        const addCouponInput = await this.addCouponInput();
        const applyCouponButton = await this.applyCouponButton();

        await addCouponButton.click();
        await addCouponInput.setValue(coupon);
        await applyCouponButton.click();
    }

    // open cart page
    async open() {
        await super.open('cart');
    }

    async waitForCartPageToLoad() {
        const addCouponButton = await this.addCouponButton();
        await browser.waitUntil(
            async () => addCouponButton.isDisplayed(),
            {
                timeout: 5000,
                timeoutMsg: 'expected cart page to load after 5s'
            }
        );
    }

    async clickProceedToCheckoutButton() {
        const proceedToCheckoutButton = await this.proceedToCheckoutButton();
        await browser.waitUntil(
            async () => await proceedToCheckoutButton.isEnabled() && proceedToCheckoutButton.isDisplayed(),
            {
                timeout: 5000,
                timeoutMsg: 'expected proceed to checkout button to be enabled and displayed after 5s'
            }
        )
        await proceedToCheckoutButton.click();
    }

    // check discount code applied with text coupon
    async checkDiscountCodeApplied(coupon) {
        const discountCodeApplied = await this.discountCodeApplied();
        await browser.waitUntil(
            async () => await discountCodeApplied.getText() === coupon,
            {
                timeout: 5000,
                timeoutMsg: 'expected discount code to be applied after 5s'
            }
        );
    }

    //click free shipping radio button
    async clickFreeShippingRadio() {
        const freeShippingRadio = await this.freeShippingRadio();
        await freeShippingRadio.click();
    }

    // check if index product description contains 'virtual', return true if it does, else return false
    async checkProductDescriptionContainsVirtual(index) {
        const productDescription = await this.productDescription();
        const textDescription = await productDescription[index].getText();
        return textDescription.includes('virtual');
    }
}

module.exports = new CartPage();