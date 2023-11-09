/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 71
 */





























































    	_share = SafeMath.div(msg.value, 4);

        extra[0].call.value(_share).gas(800000)();
		// <yes> <report> UNCHECKED_LL_CALLS
        extra[1].call.value(_share).gas(800000)();

        extra[2].call.value(_share).gas(800000)();

        extra[3].call.value(_share).gas(800000)();


