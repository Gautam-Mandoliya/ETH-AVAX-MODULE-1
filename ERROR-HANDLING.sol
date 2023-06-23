// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractWithStatements {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        // Using require statement to validate a condition
        require(_newValue > 0, "New value must be greater than zero");

        // Using assert statement to validate an assertion
        assert(_newValue != value);

        // Updating the value
        value = _newValue;

        // Using revert statement to revert the transaction
        if (_newValue == 42) {
            revert("Cannot set the value to 42");
        }
    }
}
