/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/reentrancy/SpankChain_source_code/SpankChain_Payment.sol
 * @author: -
 * @vulnerable_at_lines: 426
 */
































































































































































































































































































































































































































         require(now > Channels[_lcID].LCopenTimeout);

         if(Channels[_lcID].initialDeposit[0] != 0) {
             // <yes> <report> REENTRANCY
             Channels[_lcID].partyAddresses[0].transfer(Channels[_lcID].ethBalances[0]);
         }
         if(Channels[_lcID].initialDeposit[1] != 0) {
             
             require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], Channels[_lcID].erc20Balances[0]),"CreateChannel: token transfer failure");
         }


