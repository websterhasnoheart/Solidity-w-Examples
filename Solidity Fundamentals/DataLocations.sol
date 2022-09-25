// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/*
    Variables are declared as either storage, memory or calldata to specify the location of data storage
    - storage - variable is a state variable(stored on blockchain)
    - memory - variable stored in memory and it exists while a function is called
    - calldata - special data location that contains function argument
*/

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStruct;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something
    }

    //you can also return memory variable
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // do something with memory array
    }

    function h(uint[] calldata _arr) external {
        //do something with calldata array
    }
}