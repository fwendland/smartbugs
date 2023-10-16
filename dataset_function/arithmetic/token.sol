/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: Steve Marx
 * @vulnerable_at_lines: 20,22
 */












   function transfer(address _to, uint _value) public returns (bool) {
     // <yes> <report> ARITHMETIC
     require(balances[msg.sender] - _value >= 0);
     // <yes> <report> ARITHMETIC
     balances[msg.sender] -= _value;
     balances[_to] += _value;
     return true;
   }
