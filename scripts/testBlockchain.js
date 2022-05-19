// (1) Import libraries
const ethers = require('ethers')
const solc = require('solc')
const ganache = require('ganache-core')

/* (2) Our next step is to spin up our test blockchain! We'll need to initialize the blockchain with access to an address that has ether.
An easy way to do this is to create a random wallet with ethers.js and then provide the private key to ganache core accounts during initialization:
We created a random address and set a balance of 10 ether. We'll hold onto this wallet for later use in the script, we'll need that ether for gas money*/
const randomWallet = ethers.Wallet.createRandom()
const ganacheProvider = ganache.provider({
	accounts: [
		{
			balance: ethers.utils.parseEther('10').toString(),
			secretKey: randomWallet.privateKey,
		},
	],
})

/* (3) We can also take this opportunity to hook up an ethers.js provider and wallet to the ganache provider. Now we have an ethers.js wallet and provider connected to our test blockchain!*/

const provider = new ethers.providers.Web3Provider(ganacheProvider)
const wallet = randomWallet.connect(provider)

/* (4) Make a smart contract and store it as a string. Very simple! We'll try to grab that state variable later to make sure we deployed it properly. */
const content = `
    pragma solidity ^0.8.0;
    contract Contract {
        uint public x;
        constructor(uint _x) {
            x = _x;
        }
    }
`

/* (5) Next, we'll need to compile it. This is where we use solc.  You can see in sources we have named the contract file and provided the content from the string we created above it. This is necessary especially with larger projects with many solidity files involved. The compiler will output an object for each of these inputs depending on the settings. */

const input = {
	language: 'Solidity',
	sources: { 'contract.sol': { content } },
	settings: { outputSelection: { '*': { '*': ['*'] } } },
}
const output = JSON.parse(solc.compile(JSON.stringify(input)))
