/*
 * @source: https://github.com/etherpot/contract/blob/master/app/contracts/lotto.sol
 * @author: -
 * @vulnerable_at_lines: 109
 */



































































































         var winner = calculateWinner(roundIndex,subpotIndex);
         var subpot = getSubpot(roundIndex);

         // <yes> <report> UNCHECKED_LL_CALLS
         winner.send(subpot);

         rounds[roundIndex].isCashed[subpotIndex] = true;
         //Mark the round as cashed





