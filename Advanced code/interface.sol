// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Count {

uint public icount;

    function increase() public returns(uint) {

        icount += 1;
        return icount;
    }
}

interface ICount {

     function icount() external view returns(uint);
     function increase() external;

}

contract Ucount {

    function CallIcount(address _addr) public view returns(uint) {
        
        return ICount(_addr).icount();
    }

    function CallIncrease(address _addr) external {

        ICount(_addr).increase();
    }
}     
    