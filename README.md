
# Project Title

Error-handling using js

# Description

This project contains a Solidity smart contract that demonstrates 
different error handling techniques(require().assert() and revert()).

Events are also used to execute this project. Events are used to
integrate this smart contract with javascript.


# Getting Started 
## Installation

### Starter Hardhat Project for Event Challenge

Firstlly Clone the git repository: git clone https://github.com/Gautam-Mandoliya/ETH-AVAX-MODULE-1.git

After cloning the github, you have to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: `npm i`
2. Open two additional terminals in your VS code
3. In the second terminal type: `npx hardhat node`
4. In the third terminal, type: `npx hardhat run --network localhost scripts/deploy.js`
5. Back in the first terminal, type: `npx hardhat console --network localhost`
6. Then we'll use this command to attach our smart contract to our console: 
   `const err = await (await ethers.getContractFactory("Bank")).attach("0x5FbDB2315678afecb367f032d93F642f64180aa3")`
   
Once the contract is attached, you can go ahead and call the smart contract functions!

Here is an example you can run using our hardhat provided accounts:

1. Call requireExample function and listen for ValueDivided event

     --> await err.requireExample(100,2) //require is not called
   
     --> await err.requireExample(100,0) //require is called

2. Call revertExample function and listen for EtherTransferred event
     --> const beneficiary = "0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"
   
     --> const value = ethers.utils.parseEther("5"); // Convert 5 Ether to Wei

     --> await err.revertExample(beneficiary, { value: value })


3. Call assertExample function and listen for NumbersAdded event
  
     --> await err.assertExample([4,6,10]) //assert is not called
   
     --> await err.assertExample([0,0,0])  //assert is called.


## Author

Gautam-Mandoliya

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

