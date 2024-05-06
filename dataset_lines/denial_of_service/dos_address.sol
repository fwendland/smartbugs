/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/dos_gas_limit/dos_address.sol
 * @author: -
 * @vulnerable_at_lines: 16,17,18
 */









        // <yes> <report> DENIAL_OF_SERVICE
        if(creditorAddresses.length>1500) {
            creditorAddresses = new address[](0);
            win = true;
        }

