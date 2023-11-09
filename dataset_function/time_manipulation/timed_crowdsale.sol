/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/timestamp_dependence/timed_crowdsale.sol
 * @author: -
 * @vulnerable_at_lines: 13
 */





  function isSaleFinished() view public returns (bool) {
    // <yes> <report> TIME_MANIPULATION
    return block.timestamp >= 1546300800;
  }
