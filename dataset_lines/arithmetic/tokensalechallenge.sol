/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-101 // https://capturetheether.com/challenges/math/token-sale/
 * @author: Steve Marx
 * @vulnerable_at_lines: 23,25
 */
















        // <yes> <report> ARITHMETIC
        require(msg.value == numTokens * PRICE_PER_TOKEN);
        // <yes> <report> ARITHMETIC
        balanceOf[msg.sender] += numTokens;


