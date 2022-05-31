// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

//  We can make any regular function payable. This allows us to differentiate the purpose of the ether coming into the smart contract

contract Contract {
    address payable public a;
    address payable public b;

    constructor(address _a, address _b) {
        a = _a;
        b = _b;
    }

    // We have two pay methods payA and payB which will tranasfer ether to the respective address

    function payA() public payable {
        // msg.value(uint) - the amount of wei sent
        // the method transfer is available on any "address payable". It takes a uint amount of Wei and transfers it from the contract account to the address.
        a.transfer(msg.value);
    }

    function payB() public payable {
        b.transfer(msg.value);
    }
}