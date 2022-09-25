// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    fallback is another way to receive Eth and does not return anything
    It is executed when
        - a function that does not exists is called
        - Ether is sent directly to a contract but receive() does not exist or msg.data is empty
*/

contract Fallback {
    event Log(uint gas);

    //fallback() must be declared as external
    fallback() external payable {
        emit Log(gasleft());
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}