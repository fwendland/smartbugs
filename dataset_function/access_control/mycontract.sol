/*
 * @source: https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-using-txorigin
 * @author: Consensys Diligence
 * @vulnerable_at_lines: 20
 * Modified by Gerhard Wagner
 */











    function sendTo(address receiver, uint amount) public {
        // <yes> <report> ACCESS_CONTROL
        require(tx.origin == owner);
        receiver.transfer(amount);
    }
