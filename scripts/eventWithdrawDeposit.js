/**
 * Listens for a `Deposit` event
 * When one occurs, withdraws immediately
 *
 * @param {ethers.Contract} contract - ethers.js contract instance
 */

const ethers = require('ethers')

function listen(contract) {
	// on() ethers.js event listener
	contract.on('Deposit', () => {
		contract.withdraw()
	})
}
