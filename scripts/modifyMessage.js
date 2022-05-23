/**
 * Set the message on the contract using the signer passed in
 *
 * @param {ethers.Contract} contract - ethers.js contract instance
 * @param {ethers.types.Signer} signer - ethers.js signer instance
 * @return {promise} a promise of transaction modifying the `message`
 */
function setMessage(contract, signer) {
	// contract.connect( providerOrSigner ) Returns a new instance of the Contract, but connected to providerOrSigner.
	//  The function connect returns a new instance of contract connected with this signer. This makes it possible to "chain" the function with the method call to createUser as shown above. Each call will be made with a different signer.
	return contract.connect(signer).modify('Hello, World!!')
}

module.exports = setMessage
