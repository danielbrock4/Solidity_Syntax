//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
// import ".././node_modules/hardhat/console.sol";



// ---------------------------------------------------------------------------------------------------

import "hardhat/console.sol";

contract Greeter {
    string private greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}

// ---------------------------------------------------------------
// contract Contract {
//     uint public x = 100 - 50;
//     uint public y = 100 + 22;
//     uint public z = 100 + 20;
// }



