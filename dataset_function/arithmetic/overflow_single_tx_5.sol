/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 42
 */

































    // MUL Overflow, no effect on state.
    function overflowmulocalonly(uint256 input) public {
        // <yes> <report> ARITHMETIC
        uint res = count * input;
    }
