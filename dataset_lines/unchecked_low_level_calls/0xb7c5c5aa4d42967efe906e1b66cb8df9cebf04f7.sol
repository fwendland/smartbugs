/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 25
 */


















        // <yes> <report> UNCHECKED_LL_CALLS
        msg.sender.call.value(balances[msg.sender])();
        balances[msg.sender] = 0;

