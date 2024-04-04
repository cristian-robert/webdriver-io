const { $$, $ } = require('@wdio/globals')
const Page = require('./page');

class HomePage extends Page {

    async addToCartButtons() {
        return $$('.ajax_add_to_cart'); // Note the use of $$ instead of $
    }

    async cartHeader() {
        return $('#site-header-cart');
    }

    async cartHeaderCount() {
        return $('#site-header-cart .count');
    }

    async removeFromCartButtons() {
        return $$('.remove_from_cart_button');
    }
    async waitForCartHeaderCount(expectedItemCount) {
        await browser.waitUntil(
            async () => {
                const actualHeaderText = await (await this.cartHeaderCount()).getText();
                return (expectedItemCount === 1)
                    ? actualHeaderText === '1 item'
                    : actualHeaderText === `${expectedItemCount} items`;
            },
            {
                timeout: 5000,
                timeoutMsg: 'expected cart header count to be according to the number of items after 5s'
            }
        );
    }

    async clickAddToCartButton(index) {
        const buttons = await this.addToCartButtons();
        if(buttons.length > index) {
            await (await buttons[index]).click();
        } else {
            console.log("Index is out of bounds of the buttons array. Please check the index value.");
        }
    }

    async clickRandomAddToCartButton() {
        const buttons = await this.addToCartButtons();
        const index = Math.floor(Math.random() * buttons.length);
        await (await buttons[index]).click();
    }

    async clickCartHeader() {
        const header = await this.cartHeader();
        await header.click();
    }

    async open() {
        await super.open('');
    }

    //check no products in cart, if present remove all
    async emptyCartIfProductsInCart() {
        //clear cart if not empty
        const removeButtons = await this.removeFromCartButtons();
        const cartItems = await this.cartHeaderCount();
        const count = await cartItems.getText();
        if (count !== '0 items') {
            await cartItems.moveTo();
            for (let i = 0; i < removeButtons.length; i++) {
                await (await removeButtons[i]).click();
            }
        }
        // check cart is empty now, if not throw error
        await browser.waitUntil(
            async () => {
                const actualHeaderText = await (await this.cartHeaderCount()).getText();
                return actualHeaderText === '0 items';
            },
            {
                timeout: 5000,
                timeoutMsg: 'expected cart header count to be 0 after 5s'
            }
        );
    }

}
module.exports = new HomePage();