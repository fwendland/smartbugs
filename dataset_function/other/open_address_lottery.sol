/*
 * @source: https://etherscan.io/address/0x741f1923974464efd0aa70e77800ba5d9ed18902#code
 * @vulnerable_at_lines: 91
 */



















































































    function forceReseed() { //reseed initiated by the owner - for testing purposes
        require(msg.sender==owner);
        // <yes> <report> OTHER - uninitialized storage
        SeedComponents s;
        s.component1 = uint(msg.sender);
        s.component2 = uint256(block.blockhash(block.number - 1));
        s.component3 = block.difficulty*(uint)(block.coinbase);
        s.component4 = tx.gasprice * 7;
        
        reseed(s); //reseed
    }
