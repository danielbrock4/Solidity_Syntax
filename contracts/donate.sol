 // SPDX-License-Identifier: MIT
 pragma solidity ^0.8.0;

 //  send ether with our transaction

contract Chartities {
    //  Each charity has an id that maps to a uint balance. 
    mapping(uint => uint) balances;
    // The donate function will add the value sent to the function to the associated charity's balance.
    function donate(uint id) external payable {
        balances[id] += msg.value;
    }
    
}