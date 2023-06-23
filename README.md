# ETH-AVAX-MODULE-1

# Error_Handling
This contract, Error_Handling , demonstrates the usage of different statements in Solidity to validate conditions and handle transactions.

# Installation
No installation is required for this contract. It can be deployed and interacted with directly on a supported Ethereum network.

# Usage
To use the Error_Handling contract, follow these steps:

1. Deploy the contract on an Ethereum network of your choice.
2. Interact with the contract's functions using a smart contract or a web3-enabled application.
   
# setValue Function

The setValue function is used to update the value variable of the contract. It takes a new value as a parameter and performs various validations using different statements.

Example usage:
Error_Handling contractInstance = new Error_Handling();

// Set a new value
Error_Handling.setValue(10);

// Attempt to set an invalid value
contractInstance.setValue(0); // Will throw a require error: "New value must be greater than zero"

// Attempt to set the same value
contractInstance.setValue(10); // Will throw an assert error: "_newValue != value"

// Attempt to set a forbidden value
contractInstance.setValue(42); // Will revert the transaction: "Cannot set the value to 42"

# Statements
The Error_Handling contract demonstrates the usage of the following statements:

Require Statement: The require statement is used to validate a condition and revert the transaction if the condition is not met. In this contract, 
it ensures that the new value passed to setValue is greater than zero.

Assert Statement: The assert statement is used to validate an assertion and throw an error if the assertion fails. In this contract, it checks that 
the new value is not equal to the current value.

Revert Statement: The revert statement is used to revert the transaction and provide an error message. In this contract, if the new value is set to 42,
it reverts the transaction with the message "Cannot set the value to 42".

# Contributing
Contributions to this project are currently not open. However, feel free to fork the repository and make modifications for personal use.

# License
This project is licensed under the MIT License. See the LICENSE file for more information.
