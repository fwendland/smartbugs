/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 100
 */




























































































	require (msg.value >= 0.005 ether);
	// <yes> <report> UNCHECKED_LL_CALLS
	firstTarget.call.value(msg.value)();


