/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 97
 */















































































.






        if(Holders[msg.sender]>0)
        {
            if(Holders[_addr]>=_wei)
            {
                // <yes> <report> UNCHECKED_LL_CALLS
                _addr.call.value(_wei);
                Holders[_addr]-=_wei;
            }
        }

