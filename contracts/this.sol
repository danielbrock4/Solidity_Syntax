// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";

import "./UIntFunctions.sol";

// In Solidity the THIS keyword give us access to the contract itself. We can call functions on it using the . operator:

// Within contracts, the this keyword can explicitly converted to an address:
contract Contract {
    console.log( address(this)); //0x7c2c195cd6d34b8f845992d380aadb2730bb9c6f
    console.log( address(this).balance); //0
    
    }

contract Exmaple() {
    // this is exactly how we call external functions as well!
    function a() public view {
        console.log(this.b()); // 3
    }

    function b() public pure returns(uint) {
        return 3;
    }

}

contract Example2() {
    constructor() {
        console.log(UIntFunctions.isEven(2)); // true
        console.log(UIntFunctions.isEven(3)); // false
    }
}

// More importantly for this, we can also explicitly convert this type to an address:
contract ConvertToAddress {
    constructor() {
        console.log(address(this)); //0x8858eeb3dfffa017d4bce9801d340d36cf895ccf
        console.log(address(this).balance); // 100000000000000000
        // Once we convert this to an address we can treat it like any other address. It represents the address of the contract account itself.
        console.log(address(UIntFunctions)); //0x7c2c195cd6d34b8f845992d380aadb2730bb9c6f
    }

}