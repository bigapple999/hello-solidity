// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {

    uint public number = 200;

    function foo() public virtual returns(string memory) {

        number += 1;
        return "A";
        
    }
}

contract B is A {

    function foo() public virtual override returns(string memory) {

        number += 10;
        return "C";
    }

    function add() public view returns(uint) {

        return (number + 100);
    }
}
