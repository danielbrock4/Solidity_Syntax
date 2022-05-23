 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";

contract Contract {
    function createUsers() external view {
        // The msg.sender value inside the contract will be the address of these users:
        console.log(msg.sender); // address
    }
}
