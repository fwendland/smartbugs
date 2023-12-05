/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 12
 */




    function callAddress(address a) {
        // <yes> <report> UNCHECKED_LL_CALLS
        a.call();
    }
