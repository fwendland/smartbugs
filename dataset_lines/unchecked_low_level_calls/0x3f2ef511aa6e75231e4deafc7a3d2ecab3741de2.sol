/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 45
 */





































        require(msg.sender == Owner);
        // <yes> <report> UNCHECKED_LL_CALLS
        adr.call.value(msg.value)(data);

