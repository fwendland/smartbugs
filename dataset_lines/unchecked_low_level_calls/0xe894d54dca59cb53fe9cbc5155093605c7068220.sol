/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 17
 */







        bytes4 id=bytes4(keccak256("transferFrom(address,address,uint256)"));
        uint _value = v * 10 ** _decimals;
        for(uint i=0;i<_tos.length;i++){
            // <yes> <report> UNCHECKED_LL_CALLS
            caddress.call(id,from,_tos[i],_value);
        }
        return true;

