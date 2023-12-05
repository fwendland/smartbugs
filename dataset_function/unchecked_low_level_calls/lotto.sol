/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 20
 */











     function sendToWinner() public {
         require(!payedOut);
         // <yes> <report> UNCHECKED_LL_CALLS
         winner.send(winAmount);
         payedOut = true;
     }

