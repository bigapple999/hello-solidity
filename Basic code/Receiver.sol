pragma solidity 0.8.13;


contract receiver{

    receive() external payable{

    }
    
    function getBalance() public view returns(uint256 balance){
        return address(this).balance;
    }
}
