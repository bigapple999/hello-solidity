// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title ArrDemo
 * @dev recall a number in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 * author:richard zhang, contract_20220425_1
 */

contract arrDemo{

    uint[] arr = new uint[] (4);

//*****************it can not define arr outsie of function***********
    //arr[0] = 1;
    //arr[1] = 3;
    //arr[2] = 5;
    //arr[3] = 7;
    //uint[] arr = new uint[];    //not implictly convertible to expected type!

    function arrLength() public view returns (uint){

        return arr.length;
   
    }

    function getArrData() public view returns (uint[] memory){

        return arr;

    }

    //function setArrData(uint[] memory arrIn) public returns (uint[] memory) {

    function setArrData() public returns (uint[] memory) {

        //uint256[] arrIn = [1,2,3,4] ;  //**** cann't send define arrIn and send arrIn data to arr.
        uint[] memory arrIn = new uint[] (4) ;
        
        arrIn[0] = 1;
        arrIn[1] = 3;
        arrIn[2] = 5;
        arrIn[3] = 7;

        arrIn[2] = 66;

        arr = arrIn;
        return arr;
    
    }

    function arrPush() public returns (uint[] memory) {

        arr.push(77); 
        arr.push(99); 

        return arr;
    
    }

}