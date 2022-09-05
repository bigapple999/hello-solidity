// SPDX-License-Identifier: MIThttps://github.com/bigapple999/hello-solidity/blob/main/Mapping2.sol
pragma solidity ^0.8.13;

contract myMaps {

    mapping (address => uint) public mymaap;

    function setmap (address addr, uint uinttext) public {
        mymaap [addr] = uinttext;
    }

    function readmap (address addr) public view returns (uint) {
        return mymaap[addr];
    }
}
