/*
 * @article: https://blog.positive.com/predicting-random-numbers-in-ethereum-smart-contracts-e5358c6b8620
 * @source: https://etherscan.io/address/0xcC88937F325d1C6B97da0AFDbb4cA542EFA70870#code
 * @vulnerable_at_lines: 114
 * @author: -
 */







































































































        // Start next raffle
        raffleId++;
        nextTicket = 0;
        // <yes> <report> BAD_RANDOMNESS
        blockNumber = block.number;

        // gaps.length = 0 isn't necessary here,
        // because buyTickets() eventually clears
        // the gaps array in the loop itself.

        // Distribute prize and fee
        winningAddress.transfer(prize);
        feeAddress.transfer(fee);

