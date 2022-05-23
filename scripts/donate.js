//  send ether with our transaction

// We can call the donate method from ethers.js and provide ether:
const ethers = require('ethers')

// This will send 5 ETH to the donate function which will store it in the balances mapping associated with the charityId.

async function donate(contract, charityId) {
	// You'll notice that the first argument passed here was the charityId, matching the Solidity signature
	await contract.donate(charityId, {
		// The second argument we passed in is called the overrides object.
		// In this object we can specify the value, which is how much ether we'd like to send. This object must be passed in last after all the other argument functions.
		//  Along with the value there are four other values that can be specified in the overrides object of a transaction: gasLimit, gasPrice, nonce and chainId.
		value: ethers.utils.parseEther('5'),
	})
}
