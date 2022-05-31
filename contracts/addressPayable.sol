// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


// There are two different types of Solidity addresses: address and address payable.
// The only difference between these types is that address payable has the methods transfer and send.
//  The purpose of the distinction between these two types is to force the developer to be explicit in their desire to pay an address other than the msg.sender. This makes it less likely a mistake will occur.

contract Example {
    address payable a;
    address b;
    address payable c;


    constructor(
        address payable _a, 
        address payable _b, 
        address _c
    ) {
        // The first assignment stores an address payable in a address payable state variable
        a = _a; // store payable in payable 
        // The next two assignments show data type conversion
        b = _b; // implicit conversion to nonpayable
        c = payable(_c); // explicit conversion to payable
        // The last assignment illustrates that msg.sender is an address payable so there is no type conversion necessary.
    } 
}

contract Contract {
    address payable public owner;
    address payable public charity;

    // agruement that adds charity addresses
    constructor(address payable _charity) {
        owner = payable(msg.sender);
        charity = _charity;
    }

    // special function receive runs when a contract is sent ether without calldata and it must be external, payable
    receive() external payable {
        // msg.value(uint) - the amount of wei sent
        msg.value;
    }

    // function donate() public {
    //     //  When this function is called transfer all remaining funds in the contract to the charity address.
	// 	charity.transfer(address(this).balance);
	// }


    function donate() public {
        // When you call selfdestruct on a contract account, the bytecode is cleared. The contract will no longer be able to respond to ether transfers.
        selfdestruct(charity);
    }

    // There is another way to transfer ether in Solidity that forwards all the currently available gas along:
    function tip() public payable {
		// forwards all remaining gas along 
		(bool success, ) = owner.call{ value: msg.value }("");
	}

}

