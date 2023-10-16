/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 65
 */





















































      //Withdraw money from contract balance to owner
      function withdraw(uint256 _amount) onlyOwner returns (bool result) {
          uint256 balance;
          balance = this.balance;
          if(_amount > 0) balance = _amount;
          // <yes> <report> UNCHECKED_LL_CALLS
          owner.send(balance);
          return true;
      }
