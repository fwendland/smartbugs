/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/weak_randomness/random_number_generator.sol
 * @author: -
 * @vulnerable_at_lines: 12,18,20,22
 */








  function random(uint max) view private returns (uint256 result) {
    // Get the best seed for randomness
    uint256 x = salt * 100 / max;
    // <yes> <report> BAD_RANDOMNESS
    uint256 y = salt * block.number / (salt % 5);
    // <yes> <report> BAD_RANDOMNESS
    uint256 seed = block.number / 3 + (salt % 300) + y;
    // <yes> <report> BAD_RANDOMNESS
    uint256 h = uint256(blockhash(seed));
    // Random number between 1 and max
    return uint256((h / x)) % max + 1;
  }
