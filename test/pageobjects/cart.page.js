const { $$, $ } = require('@wdio/globals')
const Page = require('./page');

// This is a class that represents a shopping cart page. It contains various methods for interacting
// with the elements on the page such as the items in the cart, applying discounts, etc.
class CartPage extends Page {

    // Returns all the items present in the cart.
    async cartItems() {
        return $$('.wc-block-cart-items__row');
    }

    // Returns information about whether a discount code has been applied.
    async discountCodeApplied(){
        return $('.wc-block-components-chip__text');
    }

    // Returns the element responsible for adding a coupon.
    async addCouponButton() {
        return $('.wc-block-components-totals-coupon-link');
    }

    // Returns the input field element where coupon is entered.
    async addCouponInput() {
        return $('#wc-block-components-totals-coupon__input-0');
    }

    // Returns the button element that is clicked to apply a coupon.
    async applyCouponButton() {
        return $('.wc-block-components-totals-coupon__button');
    }

    // Returns the button element that proceeds to checkout.
    async proceedToCheckoutButton() {
        return $('.wc-block-cart__submit-button');
    }

    // Returns the radio button element for free shipping option.
    async freeShippingRadio() {
        return $('#radio-control-0-free_shipping\\:4');
    }

    // Returns the descriptions of the products in the cart.
    async productDescription() {
        return $$('.wc-block-components-product-metadata__description');
    }

    // Waits until a specific number of items are present in the cart.
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

    // Applies a provided coupon.
    async applyCoupon(coupon) {
        const addCouponButton = await this.addCouponButton();
        const addCouponInput = await this.addCouponInput();
        const applyCouponButton = await this.applyCouponButton();
        await addCouponButton.click();
        await addCouponInput.setValue(coupon);
        await applyCouponButton.click();
    }

    // Opens the cart page.
    async open() {
        await super.open('cart');
    }

    // Waits until the cart page is loaded.
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

    // Clicks on the button to proceed to checkout.
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

    // Checks if a discount code has been applied.
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

    // Clicks on the radio button to select the free shipping option.
    async clickFreeShippingRadio() {
        const freeShippingRadio = await this.freeShippingRadio();
        await freeShippingRadio.click();
    }

    // Checks if a product description contains the word 'virtual'.
    async checkProductDescriptionContainsVirtual(index) {
        const productDescription = await this.productDescription();
        const textDescription = await productDescription[index].getText();
        return textDescription.includes('virtual');
    }
}

module.exports = new CartPage();