// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    Modifier are code that can be run before or after a function call
    Modifier can be used to:
        - Restrict access
        - Validate inputs
        - Guard against reentrancy hack
*/

contract FunctionModifier {
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    //Modifier to check that caller is the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
        //Underscore is a special character only used inside a function modifier and it tells the solidity to
        // execute the rest of the code
    }

    //Modifiers can take inputs, this modifier checks the address passed in is not zero address
    modifier validAddress(address _addr) {
        require(_addr != address(0), "not valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    //Modifier can be called before and after a function, this modifier prevents a function from being called
    // while it is still executing
    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;
        if (i > 1) {
            decrement(i - 1);
        }
    }
}