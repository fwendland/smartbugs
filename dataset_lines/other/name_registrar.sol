/*
 * @source: https://github.com/sigp/solidity-security-blog#storage-example
 * @vulnerable_at_lines: 21
 */
















        // set up the new NameRecord
        // <yes> <report> OTHER - uninitialized storage
        NameRecord newRecord;
        newRecord.name = _name;
        newRecord.mappedAddress = _mappedAddress;

        resolve[_name] = _mappedAddress;
        registeredNameRecord[msg.sender] = newRecord;

