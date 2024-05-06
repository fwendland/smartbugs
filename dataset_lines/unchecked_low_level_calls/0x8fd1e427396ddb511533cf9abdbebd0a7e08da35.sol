/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 44
 */





































        // <yes> <report> UNCHECKED_LL_CALLS
        token.call(bytes4(sha3("transfer(address,uint256)")),to,amount); 



