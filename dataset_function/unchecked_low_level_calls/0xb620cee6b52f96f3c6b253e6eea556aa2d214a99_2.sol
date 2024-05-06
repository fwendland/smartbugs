/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 106
 */

































































































function callSecondTarget () public payable onlyPlayers {
	require (msg.value >= 0.005 ether);
	// <yes> <report> UNCHECKED_LL_CALLS
	secondTarget.call.value(msg.value)();
}
