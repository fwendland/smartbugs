/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-118#incorrect-constructor-name2sol
 * @author: Ben Perez
 * @vulnerable_at_lines: 17
 */










    // <yes> <report> ACCESS_CONTROL
    function Constructor()
        public
    {
        owner = msg.sender;
    }
