/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-101#overflow-simple-addsol
 * @author: -
 * @vulnerable_at_lines: 14
 */






    function add(uint256 deposit) public {
        // <yes> <report> ARITHMETIC
        balance += deposit;
    }
