// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() { 
  const EventTest = await hre.ethers.getContractFactory("error");
  const eventTest = await EventTest.deploy();

  await eventTest.deployed();
  console.log( "Contract deployed to:", eventTest.address);

  eventTest.on("ValueDivided", (sender, value, divisor, result) => {
    console.log("ValueDivided event emitted:");
    console.log(`Sender:",${sender}`);
    console.log(`Value:, ${value}`);
    console.log(`Divisor:, ${divisor}`);
    console.log(`Result:, ${result}`);
  });


 
  eventTest.on("EtherTransferred", (sender, beneficiary, value) => {
    console.log("EtherTransferred event emitted:");
    console.log(`Sender:",${sender}`);
    console.log(`Beneficiary:, ${beneficiary}`);
    console.log(`Value:, ${value}`);
  });

  
  eventTest.on("NumbersAdded", (sender, numbers, total) => {
    console.log("NumbersAdded event emitted:");
    console.log(`Sender:",${sender}`);
    console.log(`Numbers:, ${numbers}`);
    console.log(`Total:, ${total}`);
  });
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
