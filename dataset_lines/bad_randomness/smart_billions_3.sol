/*
 * @source: https://etherscan.io/address/0x5ace17f87c7391e5792a7683069a8025b83bbd85#code
 * @author: -
 * @vulnerable_at_lines: 700,702,704,706,708,710,712,714,716,718
 */





















































































































































































































































































































































































































































































































































































































































































































        // <yes> <report> BAD_RANDOMNESS
        return( ( uint(block.blockhash(_lastb  )) & 0xFFFFFF )
        // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+1)) & 0xFFFFFF ) << 24 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+2)) & 0xFFFFFF ) << 48 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+3)) & 0xFFFFFF ) << 72 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+4)) & 0xFFFFFF ) << 96 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+5)) & 0xFFFFFF ) << 120 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+6)) & 0xFFFFFF ) << 144 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+7)) & 0xFFFFFF ) << 168 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+8)) & 0xFFFFFF ) << 192 )
            // <yes> <report> BAD_RANDOMNESS
            | ( ( uint(block.blockhash(_lastb+9)) & 0xFFFFFF ) << 216 )
            | ( ( uint(_delta) / hashesSize) << 240));


