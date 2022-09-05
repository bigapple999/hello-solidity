// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Hash256 {

    // bytes32 public hash;

    function hash256(string memory _str) public view returns(bytes32) {
        return keccak256(abi.encodePacked(_str));

    }

    function hash256_bytes(bytes32 _byt1,bytes32 _byt2) public view returns(bytes32) {
        return keccak256(abi.encodePacked(_byt1,_byt2));

    }
}

//hash(0)//0x78a93af7ef9f1380d64a61c552cbefc298da07acb65530265b8ade6ebe8218c4
//hash(1)//0x92ae03b807c62726370a4dcfecf582930f7fbb404217356b6160b587720d3ba7

//hash(2)// 0xdca3326ad7e8121bf9cf9c12333e6b2271abe823ec9edfe42f813b1e768fa57b

//hash(3)//0x8da9e1c820f9dbd1589fd6585872bc1063588625729e7ab0797cfc63a00bd950

//hash(0,1) = 0x995788ffc103b987ad50f5e5707fd094419eb12d9552cc423bd0cd86a3861433
//hash(2,3) =  0x2f71627ef88774789455f181c533a6f7a68fe16e76e7a50362af377269aabfee

//root = hash(hash(0,1),hash(2,3)) = 0xcc086fcc038189b4641db2cc4f1de3bb132aefbd65d510d817591550937818c7

