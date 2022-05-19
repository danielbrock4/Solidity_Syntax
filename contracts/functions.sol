// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// Here we are setting the value of a state variable upon the contract's deployment.
    /*The constructor for Solidity contracts is quite similar to the constructor in classes of many object-oriented languages. The constructor function is invoked only once during the contract's deployment and never again. It is generally used for setting up initial contract values. */
    //What if we wanted to let the deployer of the contract decide the value of isOpen? We can pass an argument to our constructor
    /* Notice how the parameter name (_isOpen) has an underscore in front of it? This prevents the variable from having the same name as the state variable. When the names collide it is referred to as variable shadowing. It can happen in Solidity quite often since we can refer to state variables without using this */
// contract functionContract { 
//     bool public isOpen;
    
//     constructor(bool _isOpen) {
//         isOpen = _isOpen;
//     }
// }

contract Contract {
    //  When using public on a state variable a getter is automatically created for us with a function of the same name.
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    // External visibility is quite similar to the public visibility for functions. External is better than public if you know that you are only calling the function externally (outside the EVM). 
    // Public visibility requires more gas because it can be called externally and internally, which complicates the assembly code.
    function increment() external {
       x++; 
    }

    //  Returning values in Soldiity is only useful for internal functions and blockchain queries.
    // The returns declaration not only helps the compiler check for compile-time errors in our code, it also is how it generates the ABI. This helps external programs communicate with our Solidity contract! 
    // VIEW - Adding the view keyword to the isRunning function signature guarantees it will not modify state variables. You can think of view functions as read-only; they can read the state of the contract but they cannot modify it.
    function add(uint y) external view returns(uint){
		return x + y;
	}



    // In Solidity it is perfectly valid to declare two functions with the same name if they have different parameters:
    // Solidity will call the function signatures that matches the arguments provided. For example, add(2,4) will invoke the first funciton while add(2,3,4) will invoke the second function
    // We can explicitly define whether a function will modify state within the Smart Contract itself! When a function is marked as view or pure by Solidity it cannot modify state.
    // The returns declaration not only helps the compiler check for compile-time errors in our code, it also is how it generates the ABI. This helps external programs communicate with our Solidity contract! 
    // Returning values in Soldiity is only useful for internal functions and blockchain queries
    // PURE - Occasionally there is the necessity for Solidity functions that neither read from nor write to state. 
    function add(uint d, uint e) external pure returns(uint) {
        return d + e;
    }
    function add(uint d, uint e, uint f) external pure returns(uint) {
        return d + e + f;
    }
    /*Solidity can return multiple values from functions. Notice that the returns keyword specifies two return values. Also we are wrapping the values in a parenthesis in order to return multiple values. This is referred to as a tuple. They are a list of values that can be used as a temporary structure to return values or do assignment destructuring. */
    function addTwo(uint g, uint h) external pure returns(uint, uint) {
        return (g + 2, h + 2);
    }
    // We can also use tuples in assignment destructuring
    // (uint x, uint y) = addTwo(4, 8);
    // console.log(x); // 6
    // console.log(y); // 10
    
    function double(uint i, uint j) external pure returns(uint, uint) {
        return (i * 2, j * 2);
    }

    function double(uint k) public pure returns(uint) {
		return k * 2;
	}
	
	function double(uint l, uint m, uint n) external pure returns(uint, uint, uint) {
		return (double(l), double(m), double(n));
	}

}