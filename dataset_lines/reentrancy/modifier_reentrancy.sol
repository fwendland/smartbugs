/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/reentracy/modifier_reentrancy.sol
 * @author: - 
 * @vulnerable_at_lines: 15
 */







  //If a contract has a zero balance and supports the token give them some token
  // <yes> <report> REENTRANCY

    tokenBalance[msg.sender] += 20;

