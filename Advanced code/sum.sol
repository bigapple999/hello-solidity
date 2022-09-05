// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./abstractSum.sol";

contract sumtest is abstractSum {

    /**
     * function which define in as internal in abstract contract(parents contract) can be using derectly in son contracts. 
     * Also this internal function in parents contract can be override in son contracts.
    */

    // function _sumInternal (uint256 _num1, uint256 _num2) internal virtual override returns(uint256) {
    //     uint256 num1 = _num1;
    //     uint256 num2 = _num2;
    //     uint256 inSum = num1 - num2;
    //     return inSum;
    // }

    function dev (uint256 _data1, uint256 _data2) public returns(uint256) {
        return _sumInternal(_data1, _data2);
    }

}