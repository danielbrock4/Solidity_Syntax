const ethers = require('ethers')

/**
 * Deposit at least 1 ether into the contract
 *
 * @param {ethers.Contract} contract - ethers.js contract instance
 * @return {promise} a promise of the deposit transaction
 */

function deposit(contract) {
	// The overrides object. In this object we can specify the value, which is how much ether we'd like to send. This object must be passed in last after all the other argument functions.
	// Along with the value there are four other values that can be specified in the overrides object of a transaction: gasLimit, gasPrice, nonce and chainId.
	return contract.deposit({ value: ethers.utils.parseEther('5') })
}

module.exports = deposit
