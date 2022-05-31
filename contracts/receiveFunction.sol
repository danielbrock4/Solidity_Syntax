// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";

// Here the msg.value is the amount of ether sent to this function pay measured in Wei. Just by adding a payable keyword to this function we are able to accept ether. The ether is automatically stored in the contract's balance, no need to do anything else!
// SPECIFING METHOD
contract Contract {
    function pay() public payable {
        console.log(msg.value); //100000
    }
}
//  What if someone tried to send a payment to a nonpayable function? The transaction will fail, sending the ether back to the sender.

// NOT SPECIFING METHOD EXAMPLE

contract Example {
    // You'll notice that receive does not use the function keyword. This is because it is a special function (like constructor). It is the function that runs when a contract is sent ether without any calldata.
    //  The receive function must be external, payable, it cannot receive arguments and it cannot return anything.
    receive() external payable {
        console.log(msg.value); // 100000
    }

    // The fallback function is also a special function and it looks like this:
    //If the contract doesn't know how to respond the data sent to it, it will invoke the fallback function.
    fallback() external {
        // Do something
    }
}