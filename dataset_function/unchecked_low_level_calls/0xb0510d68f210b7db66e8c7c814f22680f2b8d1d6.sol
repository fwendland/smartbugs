/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 69,71,73,75
 */

























































//fund puppets TROUBLESHOOT gas

    function fundPuppets() public payable {
        require(msg.sender == owner);
    	_share = SafeMath.div(msg.value, 4);
		// <yes> <report> UNCHECKED_LL_CALLS
        extra[0].call.value(_share).gas(800000)();
		// <yes> <report> UNCHECKED_LL_CALLS
        extra[1].call.value(_share).gas(800000)();
		// <yes> <report> UNCHECKED_LL_CALLS
        extra[2].call.value(_share).gas(800000)();
		// <yes> <report> UNCHECKED_LL_CALLS
        extra[3].call.value(_share).gas(800000)();
        }

