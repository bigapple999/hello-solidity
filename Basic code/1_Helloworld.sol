// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Helloworld
 * @dev send & get string in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 * author:richard zhang, this is my first solidity contract_20220423
 */

 contract Helloworld {
  
    string str = "helloworld";

    function send(string memory send_str)  public {

        str = send_str;
    }

    function get() public view returns (string memory) {

       return str;
    }

 }
