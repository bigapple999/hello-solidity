// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Reentry {

    mapping(address => uint) public lastWithDrawTime;
    mapping(address => uint) public balance;

    receive() external payable{}


    // Payable address can receive Ether
    address payable public owner;

    // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit(uint _amount) public payable{

        balance[owner] += _amount;
        lastWithDrawTime[owner] = block.timestamp;

    }

    function withdraw(uint _amount) public payable {

        require(balance[owner] >= _amount);
        // require(block.timestamp >= lastWithDrawTime[owner] - 20 seconds);

        // owner.transfer(_amount);
        (bool sent, bytes memory data) = owner.call{value: _amount}("");
        require(sent, "Failed to send Ether");

        balance[owner] -= _amount;
        lastWithDrawTime[owner] = block.timestamp;

    }

}