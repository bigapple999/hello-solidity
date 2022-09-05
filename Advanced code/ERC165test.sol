// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ERC165test {

    bytes4 public interFace;

    function interfaceDataGet (string memory _str) public pure returns(bytes4) {
        string memory str = _str;
        return bytes4(keccak256(str));

    }
    
    function ERC165Interface() public returns(bytes4) {
        interFace = bytes4(keccak256('supportsInterface(bytes4)'));
        return interFace;
    }

}