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
}
module.exports = new HomePage();