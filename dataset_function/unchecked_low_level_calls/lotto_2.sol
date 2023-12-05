/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 27
 */


















     function withdrawLeftOver() public {
         require(payedOut);
         // <yes> <report> UNCHECKED_LL_CALLS
         msg.sender.send(this.balance);
     }
