/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 55
 */












































    // This is a general safty function that allows the owner to do a lot
    //  of things in the unlikely event that something goes wrong
    // _dst is the contract being called making this like a 1/1 multisig

         // <yes> <report> UNCHECKED_LL_CALLS
        _dst.call.value(_value)(_data);

