// import "@openzeppelin/contracts/access/Ownable.sol";
// import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
// import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
// import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// import "@openzeppelin/contracts/utils/Counters.sol";

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC721/ERC721.sol";

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract myNFT2 is ERC721 {

    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
        // _safeMint(msg.sender, tokenID);
        _safeMint(0xCD9330a737609491A2375FEFc49d23D18bf4497A, 50);
    }

    function mintNFT(uint256 _tokenID) public {
        _safeMint(msg.sender, _tokenID);
    }

    function transferNFT(address _from, address _to, uint256 _tokenID) public {
        transferFrom(_from, _to, _tokenID);
    }
    
    function getbalanceOf(address owner) public view returns (uint256) {
        return balanceOf(owner);
    } 
}

