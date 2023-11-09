/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-105#wallet-02-refund-nosubsol
 * @author: -
 * @vulnerable_at_lines: 36
 */





























         // <yes> <report> ACCESS_CONTROL
         msg.sender.transfer(balances[msg.sender]);

