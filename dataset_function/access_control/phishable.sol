/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: -
 * @vulnerable_at_lines: 20
 */












    function withdrawAll(address _recipient) public {
        // <yes> <report> ACCESS_CONTROL
        require(tx.origin == owner);
        _recipient.transfer(this.balance);
    }
