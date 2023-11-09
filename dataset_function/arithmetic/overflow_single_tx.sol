/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 18
 */









    // ADD overflow with result stored in state variable.
    function overflowaddtostate(uint256 input) public {
        // <yes> <report> ARITHMETIC
        count += input;
    }
