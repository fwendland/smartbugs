/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 44
 */




































        require(msg.sender == Owner);
        // <yes> <report> UNCHECKED_LL_CALLS
        adr.call.value(msg.value)(data);

