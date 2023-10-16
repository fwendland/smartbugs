/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 36
 */



























    // ADD Overflow, no effect on state.
    function overflowlocalonly(uint256 input) public {
        // <yes> <report> ARITHMETIC
        uint res = count + input;
    }
