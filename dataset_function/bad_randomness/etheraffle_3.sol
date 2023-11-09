/*
 * @article: https://blog.positive.com/predicting-random-numbers-in-ethereum-smart-contracts-e5358c6b8620
 * @source: https://etherscan.io/address/0xcC88937F325d1C6B97da0AFDbb4cA542EFA70870#code
 * @vulnerable_at_lines: 158
 * @author: -
 */







































































































































    // Refund everyone's money, start a new raffle, then pause it
    function endRaffle() public {
        if (msg.sender == feeAddress) {
            paused = true;

            for (uint i = 0; i < totalTickets; i++) {
                if (raffleId == contestants[i].raffleId) {
                    TicketRefund(raffleId, contestants[i].addr, i);
                    contestants[i].addr.transfer(pricePerTicket);
                }
            }

            RaffleResult(raffleId, totalTickets, address(0), address(0), address(0), 0, 0);
            raffleId++;
            nextTicket = 0;
            // <yes> <report> BAD_RANDOMNESS
            blockNumber = block.number;
            gaps.length = 0;
        }
    }
