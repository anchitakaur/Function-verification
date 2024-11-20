# Function-verification
A Solidity Function to Calculate Balance:
A Solidity function where users can deposit money, and their balances are updated after each deposit.

Properties of the Function:
The function must ensure:
The balance only increases after a deposit.
The deposit amount must be greater than zero.
The function must correctly calculate and return the updated balance.

How the Code Meets the Properties
Balance Only Increases:
The balance is updated by adding the deposit amount: balances[msg.sender] = balances[msg.sender] + amount;.
This ensures the balance never decreases.

Valid Deposit Amount:
The require statement ensures that deposits less than or equal to zero are rejected.
Correct Balance Update:

The new balance is calculated by correctly adding the deposit to the old balance, and this is returned to the user.
