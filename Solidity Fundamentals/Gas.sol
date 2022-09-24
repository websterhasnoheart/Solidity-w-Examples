// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
How much ether do you need to pay for a transaction
You pay gas spent * gas price amount of ether:
    - Gas is a unit of computation
    - Gas spent is the total amount of gas used in a transaction
    - Gas price is how much ether you are willing to pay per gas
Transaction with higher gas price have higher priority to be included in a block
Unspent gas will be refunded


Gas limit
There are 2 upper bounds to the amount of gas you can spend
    - gas limit : max amount of gas you are willing to pay, set by you
    - block gas limit : max amount of gas allowed in a block, set by the network
*/

contract Gas {
    uint public i = 0;
    //use up all of the gas that you send causes your transaction to fail
    // State changes are undone
    // Gas spent are not refunded

    function forever() public {
        // Run a loop until all of the gases are spent
        // Then the transaction will fail
        while (true) {
            i += 1;
        }
    }
}