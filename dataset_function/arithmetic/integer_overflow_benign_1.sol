/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/integer_overflow_and_underflow/integer_overflow_benign_1.sol
 * @author: -
 * @vulnerable_at_lines: 17
 */









    function run(uint256 input) public {
        // <yes> <report> ARITHMETIC
        uint res = count - input;
    }
