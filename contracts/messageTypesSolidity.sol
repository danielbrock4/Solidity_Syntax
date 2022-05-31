// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "hardhat/console.sol";

/*ETHEREM MESSAGES - When we have an Externally Owned Account and we want to communicate with the Ethereum Network we broadcast a transaction. 
Inside this transaction we can choose to send data which is bytecode intended to interact with the EVM.  
If we don't send data then there's no intention to interact with the EVM. This is the case for simple ether transfers from one address to another. 
The data, often refered to as the calldata, is used to pass a message into the EVM. It will target a specific contract account 
(could be either a contract or library in Solidity terms) which may also make calls to another contract account.

In Solidity we have access to these message through global variables
-msg.data(bytes) - the complete data 
-msg.sender(address payable) - the address sending the message
-msg.sig(bytes4) - the targeted function signature.this value is actually the first four bytes of the keccak256 hash of the function signature. 
-msg.value(uint) - the amount of wei sent

 */


// From our Ethereum lessons we know that an address on the EVM is a 160 bytes long, or a 40 character hexadecimal string:
contract Example {
    // We can store a fixed address in our contracts if we need to.
    address public a;
    // address public a = "0xc783df8a850f42e7f7e57013759c285caa701eb6";
    constructor() {
        a = msg.sender;
        // console.log(msg.sender);  // 0xc783df8a850f42e7f7e57013759c285caa701eb6
    }
}

contract Contract {
    address public owner;
    constructor() {
        owner = msg.sender;
    }
}