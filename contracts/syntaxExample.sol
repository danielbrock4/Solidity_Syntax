/* Here we specify the solidity versions
 * Any version greater than or equal to 0.6.2
 * or less than 0.7.0 will compile this contract */

// Comments appear to be the same! Both syntaxes: // comment and /* comment */
//There seems to be some kind of version control statement at the top
pragma solidity ^0.8.0;


// You may have noticed the keywords public and private in the initial contract example shown. These keywords are called visibility specifiers because they determine from where functions can be accessed.
// As you might expect, a public function is one that can be accessed from anywhere. A private function is one that cannot be. When a variable is declared public, a getter function is generated that will allow access to the variable state.

// Curly Braces {} seem to serve a similar purpose, marking scope
//The contract keyword seems a bit like JavaScript class, especially the constructor
contract OnOffSwitch {
    // Boolean values true/false which can be modified with boolean operators: !
    // the switch is on if true
    //There are public/private keywords for variables and functions
    // The isOn variable is prefaced with its type bool
    // Here we are declaring isOn as a member variable of the OnOffSwitch contract. In Solidity these variables are generally referred to as state variables.
    //  A private function is one that cannot be. 
    bool private isOn;

    // Just like in JavaScript classes, the constructor is run only once. For contracts, the constructor is run when it is deployed. The isOn state variable will be set to true on the deployment of this contract.\
    // As you might expect, a public function is one that can be accessed from anywhere
    constructor() public {
        // we'll default to being on
        //The code refers to the isOn member variable without using this
        //  Here our isOn variable is a boolean value. It must always be true or false.  Here our isOn variable is a boolean value. It must always be true or false
        isOn = true;
    }

    // The function syntax looks a bit similar to JavaScript
    // a publicly accessible function to "flip" the switch
    // he function toggle defines what it will return, a bool
    function toggle() public returns(bool) {
        // flip isOn from true->false or false->true
        isOn = !isOn;
        // return the new value
        // The return keyword is still used for passing a value back from a function
        return isOn;
    }
}

// The following statement is perfectly valid in Solidity. Similarly, tuples can be used to destructure assignments similar to destructuring in JavaScript
// (bool x, bool y) = (true, false);

// As you may have noticed in our initial example, Solidity also has the return statement for passing back values from a function.
// One difference in Solidity is that multiple values can be returned from a Solidity function as a tuple
// function getValues() public pure returns (int, bool) {
    // Along with the return keyword, Solidity also has if, else, while, do, for, break, and continue with the same semantics as JavaScript
    //  Here our isOn variable is a boolean value. It must always be true or false
//     return (49, true);
// }