/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/integer_overflow/integer_overflow_1.sol
 * @author: -
 * @vulnerable_at_lines: 14
 */






     function add(uint value) returns (bool){
         // <yes> <report> ARITHMETIC
         sellerBalance += value; // possible overflow

         // possible auditor assert
         // assert(sellerBalance >= value);
     }
