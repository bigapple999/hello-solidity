// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/utils/Strings.sol";

contract testlib {

    uint256 internal tokenID;

    using Strings for uint256;

    function getTokenId (uint256 _tokenId) public returns(string memory) {
        tokenID = _tokenId;
        string memory str = tokenID.toString();
        return str;
    }

}

