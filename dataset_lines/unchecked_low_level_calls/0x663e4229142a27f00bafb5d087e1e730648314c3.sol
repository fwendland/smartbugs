/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 1152
 */



















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































        delete matron.siringWithId;

        // Every time a panda gives birth counter is decremented.
        pregnantPandas--;

        // Send the balance fee to the person who made birth happen.
         // <yes> <report> UNCHECKED_LL_CALLS
        msg.sender.send(autoBirthFee);

        delete childOwner[_matronId];

        // return the new kitten's ID
        return kittenId;


