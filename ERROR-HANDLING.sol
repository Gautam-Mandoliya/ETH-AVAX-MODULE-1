// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ErrorHandling {
    uint256 public value=10;

    function setValue(uint256 _newValue) external {
        //check require function here
        require(_newValue > value, "New value must be greater than zero");
        //check assert function here
        
        assert(_newValue != value);
        value = _newValue;
        //check revert function here
        if (_newValue == 50) {
            revert("Cannot set the value to 50");
        }
    }
}
