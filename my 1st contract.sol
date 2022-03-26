pragma solidity ^0.7.3;

contract Faucet {

    //Give out eher to anyone who asks
    function withdraw (uint withdraw_amount) public {

        //limit withdrwal amount
        require(withdraw_amount <= 10000000000000);

        //send the amount to the address that requested it 
        my.sender.tranfer(withdrwal_amount);
    }

    //Accept any incoming amount
    function () public payable {}
}
