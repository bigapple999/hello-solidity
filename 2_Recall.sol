// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import  {Helloworld} from "./1_Helloworld.sol";
import * as ti from "./3_Getnumber.sol";

/**
 * @title Helloworld
 * @dev recall a number in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 * author:richard zhang, contract_20220423_2
 */

 contract Recall {
     
    function getName() public returns (string memory, uint256 ) {
        
        Helloworld a = new Helloworld();
        ti.Getnum b = new ti.Getnum();

        string memory first_getName = a.get();
        uint256  second_getName = b.getnumber();
        return (first_getName, second_getName);

    }

 }