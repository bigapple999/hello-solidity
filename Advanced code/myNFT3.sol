import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
// import "@openzeppelin/contracts/utils/introspection/IERC165.sol";
// import "@openzeppelin/contracts/utils/introspection/ERC165.sol";

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract myNFT3 is IERC165, IERC721, IERC721Enumerable{

    // contract myNFT3 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable{
    
// contract myNFT3 is ERC721Enumerable{
contract myNFT3 is ERC721, ERC721Enumerable {
// contract myNFT3 is IERC721, ERC721Enumerable {


    // using Address for address;
    // using Strings for uint256;

    uint256 public totalAmount;
    uint256 public totalBurn;

    constructor (string memory name, string memory symbol) ERC721(name, symbol) {}

    function totalSupply() public view virtual override returns(uint256) {
        return totalAmount-totalBurn;

    }

    function setTotalAmount(uint256 _total) public {
        totalAmount = _total;
    }

    function Burn(uint256 _burnAmount) public {
        totalBurn = _burnAmount;
    }

    // function approve(address to, uint256 tokenID) public virtual override {

    // }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, ERC721Enumerable) returns (bool) {
        // return interfaceId == type(IERC721Enumerable).interfaceId || super.supportsInterface(interfaceId);
    }

     function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual override(ERC721, ERC721Enumerable) {}

}


//  /**
//      * @dev See {IERC721Enumerable-totalSupply}.
//      */
//     function totalSupply() public view virtual override returns (uint256) {
//         return _allTokens.length;
//     }

//     /**
//      * @dev See {IERC721Enumerable-tokenByIndex}.
//      */
//     function tokenByIndex(uint256 index) public view virtual override returns (uint256) {
//         require(index < ERC721Enumerable.totalSupply(), "ERC721Enumerable: global index out of bounds");
//         return _allTokens[index];
//     }
