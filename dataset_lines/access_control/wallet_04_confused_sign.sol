/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-105#wallet-04-confused-signsol
 * @author: -
 * @vulnerable_at_lines: 30
 */























         // <yes> <report> ACCESS_CONTROL
         require(amount >= balances[msg.sender]);
         msg.sender.transfer(amount);
         balances[msg.sender] -= amount;

