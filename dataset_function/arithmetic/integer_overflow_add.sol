/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite/blob/master/benchmarks/integer_overflow_add.sol
 * @author: -
 * @vulnerable_at_lines: 17
 */









    function run(uint256 input) public {
        // <yes> <report> ARITHMETIC
        count += input;
    }
