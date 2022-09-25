// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    Send ETH to other contracts by 
    - transfer (2300 gas, throw error)
    - send (2300 gas, returns bool)
    - call (forward all gas or set gas, return bool)

    How to receive ETH?
    - a contract must have at least one of the functions below
    - receive() external payable
    - fallback() external payable
    receive() is called if msg.data is empty, otherwise fallback() is called

    Which one to use then?
    - call() in combination with re-entrancy guard is recommended
    guard against re-entrancy by 
        - making all states changes before calling other contracts
        - using re-entrancy guard modifier
*/

/*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
*/

contract ReceiveEther {
    //to receive ether, msg.data must be empty
    receive() external payable{}

    //fallback function is called when msg.data is not empty
    fallback() external payable{}

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendTransfer(address payalbe _to) public payable {
        //this function is no longer recommended
        _to.transfer(msg.value);
    }

    function sendSend(address payable _to) public payable {
        //Send() returns a boolean value indicating success or failure
        bool success = _to.send(msg.value);
        require(sent, "failed to send Ether");
    }

    function sendCall(address payble _to) public payable {
        (bool send, bytes memory data) = _to.call(value : msg.value)(");
        require(sent, "Failed to send Ether");
    }
}
