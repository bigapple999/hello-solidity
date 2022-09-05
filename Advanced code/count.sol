// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Count {

uint public icount;

    function increase() public returns(uint) {

        icount += 1;
        return icount;
    }
}
