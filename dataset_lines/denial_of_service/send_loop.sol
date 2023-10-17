/*
 * @source: https://consensys.github.io/smart-contract-best-practices/known_attacks/#dos-with-unexpected-revert
 * @author: ConsenSys Diligence
* @vulnerable_at_lines: 24
 * Modified by Bernhard Mueller
 */















        for(uint x; x < refundAddresses.length; x++) { // arbitrary length iteration based on how many addresses participated
        // <yes> <report> DENIAL_OF_SERVICE
            require(refundAddresses[x].send(refunds[refundAddresses[x]])); // doubly bad, now a single failure on send will hold up all funds
        }

