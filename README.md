# Assesment-3.1
## Project Title 
write a smart contract that implements the require(), assert() and revert() statements.

# Description
This project involves the creation of a Solidity smart contract designed to manage token deposits, withdrawals, and spending limits. The contract allows users to deposit and withdraw tokens, while the contract owner can set spending limits for each user. The project demonstrates the application of Solidity for handling ERC20 token interactions and enforcing specific rules such as spending limits and ownership controls.

## Getting Started 
# Installing 
In this evaluation, we will  use Remix IDE. Remix IDE is an online tool that makes creating, assembling, implementing, and testing Ethereum blockchain smart contracts easier.

use remix ide of version 0.8.18 to run code properly

## Execution Program:

*Step 1: Setup and Compilation

Open Remix IDE (https://remix.ethereum.org/).

Create a new file named ExampleContract.sol.

Copy and paste the provided Solidity code into the new file.

Compile the contract using the Solidity compiler version 0.8.20.

Step 2: Deploy the Contract

In Remix, go to the "Deploy & Run Transactions" tab.

Select the ExampleContract and deploy it.

Note the deployed contract address.

Step 3: Interact with the Contract

Set Spending Limit:

Call setSpendingLimit function with the user address and the limit amount.

Only the owner can perform this action.

Deposit Tokens:

Call deposit function with the token address and the amount to deposit.

This will simulate a deposit and update the user's balance.

Withdraw Tokens:

Call withdraw function with the token address and the amount to withdraw.

Ensure the withdrawal amount does not exceed the user's balance or spending limit.

Check Balance:

Call checkBalance function with the token address.

This will return the user's balance.

Transfer Ownership:

Call transferOwnership function with the new owner's address.

Only the current owner can perform this action.

Force Revert:

Call forceRevert function to see a transaction revert for demonstration purposes

### Help

save the file in remix IDE with .sol extension 

Compile the contract using the Solidity compiler version 0.8.20.

### Authors

Contributors names and contact info

Sarvagya pathak 

 adittyapathak8081@gmail.com


#### License

This project is licensed under the Sarvagya pathak  

