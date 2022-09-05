// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract TestContract2 {

//     event Deposit(address indexed sender, uint amount, uint balance);

//     receive() external payable{

//         emit Deposit(msg.sender, msg.value, address(this).balance);
//     }



//     function callData(address _addr) public payable {
        
//         (bool sucess, bytes memory data) = address(_addr).call{value: msg.value, gas: 50000}(abi.encodeWithSignature("callMe(uint256)", 123));
//     }
// }

// NOTE: Deploy this contract first
contract B {
    // NOTE: storage layout must be the same as contract A
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract A {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _contract, uint _num) public payable {
        // A's storage is set, B is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
    }
}
