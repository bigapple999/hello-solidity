// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";


contract Tokensent {

    IERC20 public token;
    // address public owner;

    constructor(address _token) {
        token = IERC20(_token);
        // owner = _owner;
    }

    function send(address _to, uint _amount) public {
        address to = _to;
        token.transfer(to, _amount);
    }

    function getBalance(address _addr) public view returns(uint) {
        return token.balanceOf(_addr);
    }

    function getTotalsupply() public view returns(uint) {
        return token.totalSupply();
    }
}