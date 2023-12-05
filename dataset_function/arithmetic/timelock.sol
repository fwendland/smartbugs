/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: -
 * @vulnerable_at_lines: 22
 */














     function increaseLockTime(uint _secondsToIncrease) public {
         // <yes> <report> ARITHMETIC
         lockTime[msg.sender] += _secondsToIncrease;
     }
