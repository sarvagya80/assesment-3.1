// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ExampleContract {
    uint public value;
    address public owner;
    mapping(address => uint) public balances;
    mapping(address => uint) public spendingLimits;

    event Deposit(address indexed depositor, address indexed token, uint amount);
    event Withdrawal(address indexed withdrawer, address indexed token, uint amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }

    function setSpendingLimit(address user, uint limit) public onlyOwner {
        spendingLimits[user] = limit;
    }

    function withdraw(address token, uint amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(amount <= spendingLimits[msg.sender], "Exceeds spending limit");
        require(amount <= balances[msg.sender], "Insufficient balance");

        balances[msg.sender] -= amount;
        emit Withdrawal(msg.sender, token, amount);
    }

    function deposit(address token, uint amount) public {
        require(amount > 0, "Deposit amount must be greater than zero");

        // Simulating ERC20 transfer; in reality, use token.transferFrom(...)
        balances[msg.sender] += amount;
        emit Deposit(msg.sender, token, amount);
    }

    function checkBalance(address token) public view returns (uint) {
        return balances[msg.sender];
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid new owner address");
        owner = newOwner;
    }

    function revertIfExceedsBalance(address user, uint amount) public view {
        require(user != address(0), "Invalid address");
        if (amount > balances[user]) {
            revert("Amount exceeds user's balance");
        }
    }
}

