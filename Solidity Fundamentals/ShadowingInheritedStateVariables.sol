// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Unlike functions, state variables can not be overridden by re-declaring it in the child contract

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory) {
        return name;
    }
}

// contract B is A {
//     string public name = "Contract B"; 
// }


// This is the correct way to override inherited state variables.
contract C is A {
    constructor() {
        name = "Contract C";
    }
}