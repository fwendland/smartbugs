/*
 * @article: https://blog.positive.com/predicting-random-numbers-in-ethereum-smart-contracts-e5358c6b8620
 * @source: https://etherscan.io/address/0xa65d59708838581520511d98fb8b5d1f76a96cad#code
 * @vulnerable_at_lines: 17,19,21
 * @author: -
 */








	function deal(address player, uint8 cardNumber) internal returns (uint8) {
		// <yes> <report> BAD_RANDOMNESS
		uint b = block.number;
		// <yes> <report> BAD_RANDOMNESS
		uint timestamp = block.timestamp;
		// <yes> <report> BAD_RANDOMNESS
		return uint8(uint256(keccak256(block.blockhash(b), player, cardNumber, timestamp)) % 52);
	}
