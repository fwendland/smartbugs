/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-124#mapping-writesol
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 20
 */









     function set(uint256 key, uint256 value) public {
         if (map.length <= key) {
             map.length = key + 1;
         }
        // <yes> <report> ACCESS_CONTROL
         map[key] = value;
     }
