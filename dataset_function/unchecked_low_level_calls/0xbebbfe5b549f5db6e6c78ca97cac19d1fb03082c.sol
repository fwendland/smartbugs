/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 14
 */






    function proxy(address target, bytes data) public payable {
        // <yes> <report> UNCHECKED_LL_CALLS
        target.call.value(msg.value)(data);
    }
