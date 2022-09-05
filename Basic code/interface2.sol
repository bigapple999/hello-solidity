// Solidity program to 
// demonstrate the working 
// of the interface
  
pragma solidity 0.4.19;

// A simple interface
interface InterfaceExample{
  
    // Functions having only 
    // declaration not definition
    function getStr(
    ) public view returns(string memory);
    function setValue(
      uint _num1, uint _num2) public;
    function add(
    ) public view returns(uint);
}

