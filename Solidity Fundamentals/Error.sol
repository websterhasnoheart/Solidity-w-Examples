// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    An error will undo all changed made to the state during a transaction
    You can throw an error by calling require, revert or assert
    - 'require' is used to validate the inputs and conditions before execution
    - 'revert' is similar with 'require'
    - 'assert' is used to check for code that should not fail, falling assertion means there is a bug
*/
contract Error {
    function testRequire(uint _i) public pure {
        //Require is used for validate conditions like : inputs, conditions before execution, return vallues
        require(_i > 10, "input musr be greated than 10");
    }

    function testRevert(uint _i) public pure {
        if (_i < 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);
    }

    //custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomerError(uint _balance) public view {
        uint bal = address(this).balance;
        if (bal < _balance) {
            revert(InsufficientBalance({balance : bal, withdrawAmount : _balance}));
        }
    }
}