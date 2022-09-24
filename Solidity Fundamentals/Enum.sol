// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum {
    //Enums restrict a variable to have one of only a few predefined values
    //Enum representing shipping statue
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;
    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view returns(Status) {
        return status;
    }

    //Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}