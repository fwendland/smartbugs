/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 65
 */























































          uint256 balance;
          balance = this.balance;
          if(_amount > 0) balance = _amount;
          // <yes> <report> UNCHECKED_LL_CALLS
          owner.send(balance);
          return true;

