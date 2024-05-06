/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 29
 */

















    function Command(address adr,bytes data)
    payable
    public
    {
        require(msg.sender == Owner);
        // <yes> <report> UNCHECKED_LL_CALLS
        adr.call.value(msg.value)(data);
    }
