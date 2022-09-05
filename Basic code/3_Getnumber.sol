// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Helloworld
 * @dev recall a number in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 * author:richard zhang, contract_20220423_2
 */

 contract Getnum {
     
     //string number = "20220423";
     uint256 number = 20220423;

//Note: uint256 can not returns as memory. string can return as string memory.

    function getnumber() public view returns (uint256 ){
        
        return number;

    }

 }
