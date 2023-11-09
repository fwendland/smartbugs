/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 18
 */






    // this can make OVER 9,000 OLD FUCKS
    // (just pass in 129)

        uint32 i;
        for (i = 0; i < number; i++) {
            // <yes> <report> UNCHECKED_LL_CALLS
            fuck.call(bytes4(sha3("giveBlockReward()")));
        }

