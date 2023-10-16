/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 25
 */














    function run(uint256 input) {
        if (initialized == 0) {
            return;
        }
        // <yes> <report> ARITHMETIC
        count -= input;
    }
