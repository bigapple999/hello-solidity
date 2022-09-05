// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Hash256 {

    function hash256(string memory str) public pure returns(bytes32) {
        
        return keccak256(abi.encodePacked(str));

    }
}

// contract GetBanlance {

//     function getBanlance(address _addr) public view returns(uint){

//         return _addr.balance;
//     }
// }

// contract GetMulCountBanlance {

//     struct Account {

//         address addr;
//         uint banlance;
//     }

//     // Account public account;
//     Account[] public accounts;

//     function inputAddress(address _addr) public {

//         accounts.push(Account(_addr,_addr.balance));
//     }
// }