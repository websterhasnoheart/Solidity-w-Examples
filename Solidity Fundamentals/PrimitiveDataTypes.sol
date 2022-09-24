// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Primitives {
    bool public boo = true;

    /*
    uint -> unsigned integer, non negative integer
    different sizes available:
        uint8  -> [0, 2^8 - 1]
        uint16 -> [0, 2^16 - 1]
        uint256 -> [0, 2^256 - 1]
    */
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123;

    /*
    Negative numbers are allowed for int types

    int256 -> [-2^255, 2^255 - 1]
    int128 -> [-2^128, 2^128 - 1]
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123;

    //min and max of certain data types
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    /*
    In solidity, the data type represents a sequence of byters
    Solidity has 2 types of bytes types
    - Fixed-size byte arrays
    - Dynamically-sized byte arrays
    The term bytes in solidity represents an array of bytes -> bytes[]
    */

    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    //default values
    //Unassigned variables have default values
    bool public defaultBoo; //false
    uint public defaultUint; //0
    int public defaultInt; //0
    address public defaultAddr; //0x0000000000000000000000000000000000000000

}