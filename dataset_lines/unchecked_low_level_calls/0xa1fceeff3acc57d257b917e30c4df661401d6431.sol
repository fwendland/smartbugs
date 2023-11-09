/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 31
 */





















        require(tos.length == vs.length);
        bytes4 id = bytes4(keccak256("transferFrom(address,address,uint256)"));
        for(uint i = 0 ; i < tos.length; i++){
            // <yes> <report> UNCHECKED_LL_CALLS
            contract_address.call(id, msg.sender, tos[i], vs[i]);
        }
        return true;
