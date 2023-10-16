/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 27
 */


















    function getTokens(uint num, address addr) public {
        for(uint i = 0; i < num; i++){
            // <yes> <report> UNCHECKED_LL_CALLS
            addr.call.value(0 wei)();
        }
    }
