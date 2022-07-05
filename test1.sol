// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract test1 {
    
    uint256 number;

    bool tests_1 = true;
    bool tests_2 = false;

    function set_test1() public returns(uint256) {

            bool boolx = true;
            require (boolx, "Failed into tests_1"); 
            number = 100;
            return number;


    }

    function set_test2() public returns(uint256)  {

            bool boolx = tests_2;
            require (boolx, "Failed into tests_2"); 
            number = 200;
            return number;

    }

    function numberview() public view returns(uint256) {
            return number;
    }

}
