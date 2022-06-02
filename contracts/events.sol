// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


// How could we see a list of all addresses that have ever withdrawn ether from this faucet?
// contract Faucet {
//     function withdraw() external {
//         msg.sender.transfer(1 ether);
//     }
// }


//  Events allow us to log persistent data about a transaction.
// Now we'll be able to lookup all Withdrawal events to see addresses that have received ether.
contract Faucet {
    // declared an event Withdrawal
    event Withdrawal(address _recipient);

    function withdraw() external {
        // msg.sender (address payable) - the address sending the message
        msg.sender.transfer(1 ether);
        // declared an event Withdrawal
        emit Withdrawal(msg.sender);
    }
}

// Emitting an Event
contract Example {
    // (1) declare event 
    //  The event keyword prefaces the event declaration, otherwise, it's quite similar to function syntax without the additional keywords and function body.
    // It's possible to pass multiple arguments to an event just like a function:
    // Naming the events agruments is optional. They will only appear in the ABI testing
    event ExampleEvent(
        uint _exampleArgument,
        bool _exampleArgument2
    );

    function exampleFunction() external {
        // (2) emit the event from inside of a function body:
        emit ExampleEvent(5, true);
    }
}


contract Collectible {
    address owner;
    uint price;

    event Deployed(address owner);
    event Transfer(address owner, address newOwner);
    event ForSale(uint price, uint timestamp);



    constructor () {
        owner = msg.sender;
        emit Deployed(msg.sender);
    }

    function transfer(address newOwner) external {
        require(msg.sender == owner);
        owner = newOwner;
        emit Transfer(msg.sender, newOwner);
    }

    function markPrice(uint _price) external {
        require(msg.sender == owner);
        price = _price;
        emit ForSale(price, block.timestamp);
    }
}