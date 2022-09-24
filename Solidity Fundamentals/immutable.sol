// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Immutable {
    //immutable values can be set inside a constructor but can not be changed afterwards
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}