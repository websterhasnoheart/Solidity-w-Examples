// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//There are several ways for function to return output

contract Function {
    //return multiple values
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    //return values can be named
    function returnNamed() public pure returns (uint x, bool y, uint z) {
        return (1, true, 2);
    }

    //return values can be assigned to their names
    function assigned() public pure returns(uint x, bool b, uint y) {
        x = 1;
        b = false;
        y = 2;
    }
    // Use destructuring assignment when calling another
    // function that returns multiple values.
    function destructuringAssignments()
        public
        pure
        returns (
            uint,
            bool,
            uint,
            uint,
            uint
        )
    {
        (uint i, bool b, uint j) = returnMany();

        // Values can be left out.
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    //CAN NOT use mao for eitehr input or output
    

    // Can use array for input
    function arrayInput(uint[] memory _arr) public {}

    // Can use array for output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
}