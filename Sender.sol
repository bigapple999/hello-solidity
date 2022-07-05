pragma solidity 0.8.13;

contract sender{
    address payable public receiver = payable (0xcA9D0A25EA7df7b647E4837F50EEB46bD1A8E3b0); 

    constructor() payable{
        
    }

    receive() external payable{

    }

    
    function sendToReceiver() public{
        receiver.send(15);
    }
    
    function transferToReceiver() public {
        receiver.transfer(12);
    }
    
    function callToReceiver() public {
        receiver.call{value: 10}("");
    }
        
    
    function getMyBalance() public view returns(uint256 balance){
        return address(this).balance;
    }











    
}
