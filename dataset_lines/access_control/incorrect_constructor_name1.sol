/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/wrong_constructor_name/incorrect_constructor.sol
 * @author: Ben Perez
 * @vulnerable_at_lines: 20
 */











    // The name of the constructor should be Missing
    // Anyone can call the IamMissing once the contract is deployed
    // <yes> <report> ACCESS_CONTROL



        owner = msg.sender;

