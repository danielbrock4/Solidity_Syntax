// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//In User Interfaces Solidity events are important!
// For example, let's say we need to track the balance of an ERC20 token for a particular address. This may be useful, in say, a decentralized exchange.
//  It would be great if we could subscribe to the Transfer event that is emitted every time the transfer function is called!

// IERC20.sol
interface IERC20 {
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );
}