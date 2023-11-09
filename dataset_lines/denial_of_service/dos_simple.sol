/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/dos_gas_limit/dos_simple.sol
 * @author: -
 * @vulnerable_at_lines: 17,18
 */









        if(listAddresses.length<1500) {
            // <yes> <report> DENIAL_OF_SERVICE
            for(uint i=0;i<350;i++) {
                listAddresses.push(msg.sender);
            }
            return true;

        } else {

        }

