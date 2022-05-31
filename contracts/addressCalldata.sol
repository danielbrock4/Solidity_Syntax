pragma solidity ^0.8.4;

/* 

The data, often refered to as the calldata, is used to pass a message into the EVM. It will target a specific contract account (could be either a contract or library in Solidity terms) which may also make calls to another contract account.

msg.data (bytes) - the complete calldata
msg.sender (address payable) - the address sending the message
msg.sig (bytes4) - the targeted function signature
msg.value (uint) - the amount of wei sent

 */

contract Contract {
    address public owner;

    constructor () {
        owner = msg.sender;
    }
 }