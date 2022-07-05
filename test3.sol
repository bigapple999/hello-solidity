// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract count {

    uint public count;
    uint public timestamp1 = block.timestamp; // Current block timestamp
    address public sender1 = msg.sender; // address of the caller

    function Increase() public  {
        count = count + 1;
    }

    function Decrease() public  {
        count = count - 1;
    }

    string public greeeting = "Hello World";

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }


}
