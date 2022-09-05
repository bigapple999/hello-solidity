// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract requireTest {

    bool public x;

    function x_value() public view returns (bool) {

        return x;

    }

    function x_false () public {

        x = false;
        require (x, "Require triggered");
       
    }

    function x_ture () public {

        x = true;
        require (x, "Require triggered");
       
    }
}
