pragma solidity ^0.8.0;

// public - accessible from inside and outside of the contract. May cost additional gas compared to external
// private - can only be called within this contract
// internal - can only be called from the contract or inheriting contracts

contract MyContract {
    // external will be for people to use outside of the contract. accessible only through an external message call to the contract
    // private you dont want used outside the contract but may want to use mulitple times within in the contract
    // pure means you it will not read and write storage. Pure functions will alwasy expect it behave the exact same way. 
    function myFunction() external pure {
        uint x = 5;
    }
    // Pure function will always behave the same way with the same variables. if we use this function to 10 + 15 = 25 this would be same at block 1000 or block 20000
    //returns() you must specify the datatype it will be returning
    function add(uint a, uint b) external pure returns(uint) {
        return a + b;
    }
    // unique to solidity, but instead of having a return statement within the function we can delcare the return variable within returns
    function addReturns(uint c, uint d) external pure returns(uint e) {
        e = c + d;
    }
    // if you dont set default value you will return 0
    function mathTime(uint f, uint g) external pure returns(uint sum, uint product) {
        sum = f + g;
        product = f * g;
    }
    // Truples are immutable datatypes that would multiple values in with parenthesis (). Unlike JS you can return multiple values using tuples
    // You can also warp your functions so they are not on one long line
    function mathTuple(uint h, uint i) 
        external 
        pure 
        returns(uint, uint) 
    {
        uint sum1 = h + i;
        uint product = h * i;
        return (sum1, product);
    }

    uint j = 10;
    uint k = 5;
    uint l;

    // view is function taht can read from storage. A view cannot write to storage. An external view can caled externally without paying gas.
    function sum() external view returns(uint) {
        return j + k; 
    }

    // A function can write to storage if its not pure or view: since this is writing to storage it wil alwasy cost gas to execute on the live 
    function storeSum() external {
        l = j + k;
    }




}