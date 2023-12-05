/*
 * @article: https://blog.positive.com/predicting-random-numbers-in-ethereum-smart-contracts-e5358c6b8620
 * @source: https://etherscan.io/address/0xF767fCA8e65d03fE16D4e38810f5E5376c3372A8#code
 * @vulnerable_at_lines: 127,128,129,130,132
 * @author: -
 */























































































































    // <yes> <report> BAD_RANDOMNESS
    function rand(uint max) constant private returns (uint256 result){
        uint256 factor = FACTOR * 100 / max;
        uint256 lastBlockNumber = block.number - 1;
        uint256 hashVal = uint256(block.blockhash(lastBlockNumber));

        return uint256((uint256(hashVal) / factor)) % max;
    }
