// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Contracts can destroy themselves by using the SELFDESTRUCT opcode on the EVM!
// When you call selfdestruct on a contract account, the bytecode is cleared. The contract will no longer be able to respond to ether transfers.

// This opcode actually refunds ether in order to incentivize folks to clean up the blockchain from unused contracts.

contract Contract {
    uint _countdown = 10;

    // The address provided to the selfdestruct function gets all of the ether remaining in the contract! Ether sent to the payable constructor will be refunded to the final caller of the tick function.
    constructor() payable { }

    // After 10 calls to the tick function the Contract will selfdestruct!
    function tick() public {
        _countdown--;
        if(_countdown == 0) {
            selfdestruct(msg.sender);
        }
    }
}




