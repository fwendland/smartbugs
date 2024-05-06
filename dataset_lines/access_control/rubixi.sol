/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/wrong_constructor_name/Rubixi_source_code/Rubixi.sol
 * @author: -
* @vulnerable_at_lines: 23,24
 */















         //Sets creator
         // <yes> <report> ACCESS_CONTROL

                 creator = msg.sender; //anyone can call this

