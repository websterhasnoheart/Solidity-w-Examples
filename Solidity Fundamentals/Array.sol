// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ArrayRemoveByShifting  {
    uint[] public arr;

    function remove(uint _index) public {
        require(_index < arr.length, "index out of bounds");

        for (uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }

        arr.pop();
    }
}

contract ArrayReplaceFromEnd {
    uint[] public arr;

    function remove(uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}