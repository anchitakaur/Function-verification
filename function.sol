// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleDeposit {
    // Mapping to store balances of users
    mapping(address => uint256) public balances;

    // Function to deposit money and update the balance
    function deposit(uint256 amount) public returns (uint256) {
        // Check that the deposit amount is greater than zero
        require(amount > 0, "Deposit amount must be greater than zero.");

        // Add the deposit amount to the user's balance
        balances[msg.sender] = balances[msg.sender] + amount;

        // Return the updated balance
        return balances[msg.sender];
    }

    // Function to get the balance of the caller
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
