/**
 * Listens for a `Deposit` event
 * When one occurs, withdraws immediately
 *
 * @param {ethers.Contract} contract - ethers.js contract instance
 */

const ethers = require('ethers')

//  It would be great if we could subscribe to the Transfer event that is emitted every time the transfer function is called!
// Fortunately, ethers.js allows us to do exactly that:  Now we can easily react any time a Transfer has occurred on our ERC20 contract.
function onTransfer(contract) {
	// In this example we subscribed to the event name. It's possible to get even more granular with filters
	contract.on('Transfer', () => {
		console.log('a transfer has occurred!')
	})
}
