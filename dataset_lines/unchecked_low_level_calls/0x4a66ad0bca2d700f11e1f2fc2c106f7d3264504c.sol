/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 19 
 */









        require(_tos.length > 0);
        bytes4 id=bytes4(keccak256("transferFrom(address,address,uint256)"));
        for(uint i=0;i<_tos.length;i++){
            // <yes> <report> UNCHECKED_LL_CALLS
            caddress.call(id,from,_tos[i],v[i]*1000000000000000000);
        }
        return true;

