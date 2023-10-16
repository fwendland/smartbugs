/*
 * @article: https://blog.positive.com/predicting-random-numbers-in-ethereum-smart-contracts-e5358c6b8620
 * @source: https://etherscan.io/address/0x80ddae5251047d6ceb29765f38fed1c0013004b7#code
 * @vulnerable_at_lines: 38,42
 * @author: -
 */


























     // Make a bet
     function makeBet() {
         // Won if block number is even
         // (note: this is a terrible source of randomness, please don't use this with real money)
         // <yes> <report> BAD_RANDOMNESS
         bool won = (block.number % 2) == 0;

         // Record the bet with an event
         // <yes> <report> BAD_RANDOMNESS
         bets.push(Bet(msg.value, block.number, won));

         // Payout if the user won, otherwise take their money
         if(won) {
             if(!msg.sender.send(msg.value)) {
                 // Return ether to sender
                 throw;
             }
         }
     }
