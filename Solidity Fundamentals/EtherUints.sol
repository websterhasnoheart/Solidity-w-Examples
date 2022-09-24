// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EtherUints {
    //1 ether = 10^18 wei
    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1; //true

    uint public oneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18; //true
}