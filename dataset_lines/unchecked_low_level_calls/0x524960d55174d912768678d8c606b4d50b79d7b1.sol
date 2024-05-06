/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 21
 */





	


		


		k = 1;
		
		c2 = 0xaa27f8c1160886aacba64b2319d8d5469ef2af79;	
		// <yes> <report> UNCHECKED_LL_CALLS	
		contract_address.call("register", "CentraToken");
		if(!contract_address.call(bytes4(keccak256("transfer(address,uint256)")),c2,k)) return false;

		return true;

