
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract mappingstructExample {

    struct Transaction {
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalbalance;
        uint numDeposite;
        mapping(uint => Transaction) deposite;
        uint numwithdrals;
        mapping(uint => Transaction) withdrals; 

    }

    mapping(address => Balance) public  balances;

    function depositMony() public payable {
        balances[msg.sender].totalbalance += msg.value;

        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balances[msg.sender].deposite[balances[msg.sender].numDeposite] = deposit;
        balances[msg.sender].numDeposite++;
    }

    function wihtdrawMony(address payable _to, uint _amount) public {
        balances[msg.sender].totalbalance -= _amount;

        Transaction memory withdral = Transaction(_amount, block.timestamp);
        balances[msg.sender].withdrals[balances[msg.sender].numwithdrals] = withdral;
        balances[msg.sender].numwithdrals++;

        _to.transfer(_amount);
    }
}