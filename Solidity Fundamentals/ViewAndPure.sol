// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    Getter functions can be declared view or pure
    - View function declares that no state will be changed
    - Pure function declared that no state variable will be changed or read
*/

contract ViewAndPure {
    uint public x = 1;

    //promise not to modify the state
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    //promise not to modify or read the state
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}