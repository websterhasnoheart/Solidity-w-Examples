// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    There are 3 types of variables in Solidity
    Local: 
        - declared inside a function
        - Not stored on blockchain
    State:
        - declared outside a function
        - Stored on the blockchain
    Global:
        - Provide information about the blockchain
*/

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}