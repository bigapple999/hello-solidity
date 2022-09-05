// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

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


// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.13;

// contract TransforValue {

//     event Deposit(address indexed sender, uint amount, uint balance);

//     receive() external payable{

//         emit Deposit(msg.sender, msg.value, address(this).balance);
//     }

//     function sendEth(address payable _addr,uint _amount) public payable{

//         _addr.TransforValue;
//         _addr.transfer(_amount);
//     }
// }
