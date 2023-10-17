/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 175
 */


































































































































































        requests[requestId].fee = DELIVERED_FEE_FLAG;
        unrespondedCnt--;

        if (error < 2) {
            // Either no error occurs, or the requester sent an invalid query.
            // Send the fee to the SGX account for its delivering.
            // <yes> <report> UNCHECKED_LL_CALLS
            SGX_ADDRESS.send(fee);         
        } else {
            // Error in TC, refund the requester.
            externalCallFlag = true;
            // <yes> <report> UNCHECKED_LL_CALLS
            requests[requestId].requester.call.gas(2300).value(fee)();

        }

    
