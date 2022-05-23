// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//example
// contract Example {
//     function getNumber() external pure returns(uint) {
//         return 3;
//     }
// }

// contract Contract {
//     //Public State Variable called value
// 	uint public value;

// 	constructor(uint _value) {
// 		value = _value;
// 	}
// }


contract Contract {
    // uint state variable called value
	uint public value;

	function modify(uint _value) external {
		value = _value;
	}
}