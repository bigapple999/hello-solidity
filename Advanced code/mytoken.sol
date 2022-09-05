// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/IERC20.sol";

contract MyToken is ERC20 {
    constructor(string memory name1, string memory symbol1) ERC20(name1, symbol1) {
        // Mint 100 tokens to msg.sender
        // Similar to how
        // 1 dollar = 100 cents
        // 1 token = 1 * (10 ** decimals)
        _mint(msg.sender, 100 * 10**uint(decimals()));
    }
}
// function balanceOf(address account) external view returns (uint256);
// function totalSupply() external view returns (uint256);


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