// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
 
contract SimpleDeposit { 
    mapping (address => uint256) public balances; 
 
    function deposit (uint256 amount) public returns (uint256) { 
        require (amount > 0, "Deposit amount must be greater than zero."); 
 
        balances[msg.sender] = balances[msg.sender] + amount; 
 
        return balances[msg.sender]; 
    } 
 
    function getBalance() public view returns (uint256) { 
        return balances[msg.sender]; 
    } 
} 
