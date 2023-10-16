/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-118#incorrect-constructor-name1sol
 * @author: Ben Perez
 * @vulnerable_at_lines: 18
 */











    // <yes> <report> ACCESS_CONTROL
    function missing()
        public
    {
        owner = msg.sender;
    }
