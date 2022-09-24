// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {
    uint public num;

    //send a transaction to trigger the function for modifying the state variable, transaction cost gas fee
    function set(uint _num) public {
        num = _num;
    }

    //You can read from a state variable without sending a transaction, it is free
    function get() public view returns(uint) {
        return num;
    }
}