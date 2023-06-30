//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Bank {

     address public owner;

   event ValueDivided(address indexed sender, uint256 value, uint256 divisor, uint256 result);
    event EtherTransferred(address indexed sender, address indexed beneficiary, uint256 value);
    event NumbersAdded(uint256[] numbers, uint256 total);

    constructor() {
        owner = msg.sender;
    }
//require() example
    function requireExample(uint256 a, uint256 b) public returns(uint) {
        require(b != 0, "Cannot divide by zero!");
        uint256 result = a / b;
        emit ValueDivided(msg.sender , a, b, result); 
        return result;
    }
//revert() example
   function revertExample(address payable beneficiary) public payable {
    require(msg.value > 0, "No value sent!");
    require(beneficiary != address(0), "Invalid beneficiary address!");

    bool transferSuccess = beneficiary.send(msg.value);
    if (!transferSuccess) {
        revert("Transfer failed!");
    }

    emit EtherTransferred(msg.sender, beneficiary, msg.value);
}
//assert() example
    function assertExample(uint256[] memory numbers) public  returns (uint256) {
        uint256 total = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            assert(numbers[i] != 0);
            total += numbers[i];
        }

        emit NumbersAdded(numbers, total);

        return total;
    }
}
