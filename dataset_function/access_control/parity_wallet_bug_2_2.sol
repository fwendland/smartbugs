/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-106#walletlibrarysol
 * @author: -
 * @vulnerable_at_lines: 233
 */

































































































































































































































  // kills the contract sending everything to `_to`.
  // <yes> <report> ACCESS_CONTROL
  function kill(address _to) onlymanyowners(sha3(msg.data)) external {
    suicide(_to);
  }
