// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract {
    // State Variables are stored in the contract's persistent memory. 
    // Modifying a state variable in one transaction will change its value for anyone who tries to read the variable afterwards.
	// bool myVariableDefault;
    // Public automatically creates a getter function for the variable. Now we can access the value in myVariable by calling a function on the contract with that very name: myVariable()
    // bool public myVariable = true;
    bool public a = true;
    bool public b = false;
    // Data Types in Solidity have default values, for booleans it is false. So, after deploying this contract, myVariable would be false
    bool public c;

    //  An unsigned integer is an integer that has no sign
    // uint8: Ranges from 0 to 255 Since the range of unsigned integer values does not include negative numbers, it is simply 0 to 255
    
    // The 16-bit uint range is from 0 to 65535
    uint8 public x = 1;
	uint16 public y = 65534;
	uint public sum = x + y;
    // uint8 public a = 2;
	// uint16 public b = 65533;
	// uint public sum = a + b;

    // int8: Ranges from -128 to 127
    // You can get the absolute difference simply by subtracting the negative number from the positive number. For instance, for the values 10 and -15, the absolute difference would be 25 which is 10 - -15
    int8 public m = 10;
    int8 public n = -15;
    int16 public difference = m - n;
    // int8 public p = 5;
    // int8 public q = -5;
    // int16 public difference2 = 10

    // We can create two types of byte arrays in Solidity: fixed-size and dynamically-sized. For now we're going to focus on the fixed-size array.
    // We can create byte sized arrays reserving anywhere from 1 to 32 bytes by adding the number as a suffix to bytes.
    //  You can see that each time we go up 1 byte we can store two new hexadecimal characters. Each hexadecimal character can be represented in 4 bits
    bytes1 d = 0x1f; // 0001 1111
    bytes2 e = 0xbeef; // 1011 1110 1110 1111
    bytes3 f = 0xabcdef; // 1010 1011 1100 1101 1110 1111

    //We can make comparisons of bytes with <=, <, ==, !=, >=, and >. We can also access a byte using [ ] to access a specific byte.
    bytes2 g = 0x1337;
    // console.log( g[1] ); // 37

    bytes2 public h = 0x8886; // 0xca00;
    bytes2 public i = 0x427a; // 0x00fe
    // bytes2 public cafe = 0xcafe;
    bytes2 public cafe = h | i;

    // We can create strings of characters using double quotes just like in JavaScript: the string literal "Hello World" is perfectly valid in Solidity.
    //  You'll often see fixed values described as a literal. The value "Hello World" can be described as a string literal which differentiates it from the string data type. Any fixed value could be a literal, "Hello World", 42, or true.
    bytes msg1 = "Hello World"; 
    string msg2 = "Hello World, I am a sentient robot and I have come to take over your planet";
    // If the string is shorter than 32 bytes, it is more efficient to store it in a fixed-size byte array like bytes32. This simplifies the computation since the memory is allocated ahead of time. On the other hand, both string and bytes will allocate their memory dynamically depending on the size of the string.

    // enum Directions = { Up, Left, Down, Right }

    // if(player.movement == Directions.Up) {
    // }
    // else if(player.movement == Directions.Left) {
    // }

    
    enum Foods { Apple, Pizza, Bagel, Banana }

	Foods public food1 = Foods.Apple;
	Foods public food2 = Foods.Pizza;
	Foods public food3 = Foods.Bagel;
	Foods public food4 = Foods.Banana;

    
}