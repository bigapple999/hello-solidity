// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Fibonacci sequence
 * @dev recall a number in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 * author:richard zhang, contract_20220426_1
 */
 
contract Fibonacci {

    int[] fiboArray = new int[] (2);
    uint i = 2;

/*    function bitOfArray(int i) public view returns(int) {

        return i;
    } */

    function bitOfArray(uint count) public {
        
        i = count;
    }     

    function fibonacci() public returns(uint, int[] memory) {
        
        
        fiboArray = new int[] (i);        //Redefine the length of the fiboArray. One important steps.
        fiboArray[0] = 1;
        fiboArray[1] = 1;
        
        
        for (uint m = 2; m < i ; m++) {
           
           fiboArray[m] = fiboArray[m-1] + fiboArray[m-2];   //note: the number type inside of [] must be "uint", cannot be "int"

        }

        return (i, fiboArray) ;

    } 


}