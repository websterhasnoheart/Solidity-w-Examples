// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    When a function is called, the first 4 bytes of calldata specifies which function to call
    This 4 bytes is called a function selector
    Take for example, this code below. It uses call to execute transfer on a contract at the address addr.
    addr.call(abi.encodeWithSignature("transfer(address,uint256)", 0xSomeAddress, 123))

    The first 4 bytes returned from this function is the function selector
*/

contract FunctionSelector {
    function getSelector(string calldata _func) external pure returns(bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }
}