// A signer represents an EOA we have control over. We can use it to sign transactions before sending them to the network.
// When we create a Contract instance we connect with a signer so that we can transact with the contract easily!
// We can also connect the contract with other signers when we need to run the same transaction with different addresses:

// n this example we are connecting the contract with different signers and calling the createUser method with each one.
async function createUsers(contract, signers) {
	for (let i = 0; i < signers.length; i++) {
		// contract.connect( providerOrSigner ) Returns a new instance of the Contract, but connected to providerOrSigner.
		//  The function connect returns a new instance of contract connected with this signer. This makes it possible to "chain" the function with the method call to createUser as shown above. Each call will be made with a different signer.
		//  The createUser function will be called once for each signer in the signers array.
		await contract.connect(signers[i]).createUsers()
	}
}
