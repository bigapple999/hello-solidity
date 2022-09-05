// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

abstract contract abstractSum {

    uint256 internal num1;
    uint256 internal num2;
    uint256 internal inSum;


    function _sumInternal (uint256 _num1, uint256 _num2) internal virtual returns(uint256) {
        num1 = _num1;
        num2 = _num2;
        inSum = num1 + num2;
        return inSum;
    }

    function sumPublic (uint256 _num1, uint256 _num2) public view virtual returns(uint256) {
        return _num1 + _num2;
    }

}
