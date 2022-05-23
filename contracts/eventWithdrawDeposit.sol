// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// In the Contract you can see there are two functions deposit and withdraw. Both of these functions are completely unprotected
// Your goal is to run the withdraw function as soon as anything is deposited!

// Set up an event listener in index.js. Listen for the Deposit event. 
contract Contract {
    function withdraw() external {
        msg.sender.transfer(address(this).balance);
    }

    event Deposit();

    function deposit() payable external { 
        emit Deposit();
    }
}