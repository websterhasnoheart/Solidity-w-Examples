// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {
    //mapping address to uint
    mapping(address => uint) public myMap;

    function get(address _address) public view returns (uint) {
        //Mapping like dict in python, always returns a value
        //If the value was never set, it will return the default vaue
        return myMap[_address];
    }

    function set(address _addr, uint _i) public {
    // Update the value at this address
    myMap[_addr] = _i;
    }

    function remove(address _address) public {
        //reset the value to default value
        delete myMap[_address];
    }
}

contract NestedMapping {
    //Nested mapping (map from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;
    function get(address _addr1, uint _i) public view returns (bool) {
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}