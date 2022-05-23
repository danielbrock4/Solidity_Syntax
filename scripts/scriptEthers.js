/**
 * Find the `value` stored in the contract
 *
 * @param {ethers.Contract} contract - ethers.js contract instance
 * @return {promise} a promise which resolves with the `value`
 */

// In ethers.js, the Contract provides an easy way to communicate with our Solidity contracts!
// To create a Contract instance, we pass an ABI which is used to understand the contract methods. The construction of the instance will dynamically add these methods to the instance object itself.
// We can take this Solidity contract, compile it and create an ethers.js contract instance with the bytecode and abi.
// ethers.js contract instance with the bytecode and abi.Then we can deploy the contract and interact with it from JavaScript

//  Here, contract is an ethers.js contract instance that has dynamically created the getNumber function based on the ABI of the Example contract.
// async function getNumber(contract) {
//     // We can invoke this getNumber function which returns a promise that resolves with the value we were looking for. Nice and easy!
//     const number = await contract.getNumber();
//     console.log(number); // 3
// }

// There is a public state variable called value
// Make a call to the value getter. This call required no gas and made no modifications to the contract storage.
// This function can either return the promise from invoking the method or you can make the getValue function async and return the value
async function getValue(contract) {
	// State variables are functions to call "uint public value" as value()
	const value = await contract.value()
	return value
}

function _getValue(contract) {
	return contract.value()
}

// In this stage we will be modifying a value in the contract storage. This will require us to make a transaction and spend gas. Fortunately, the contract api for this isn't much different at all!
// Once again, ethers.js will provide us with a dynamic function
// This function will set the "value" state variable to anything else. The default value for a uint is 0
function setValue(contract) {
	return contract.modify(7)
}

// // callAdder.js
// async function callAdder(adderContract) {
//     const sum = await adderContract.add(1,4);
//     console.log(sum); // 5
// }

/* In the index.js file, complete the transfer function to transfer value from the contract signer to the friend address.The signer will also be the deployer of the contract. Their balance will be 1000 after deploying the contract.Your task is to transfer some of this to the friend. It can be however much you want!*/
function transfer(contract, friend) {
	return contract.transfer(friend, 4)
}

module.exports = getValue
