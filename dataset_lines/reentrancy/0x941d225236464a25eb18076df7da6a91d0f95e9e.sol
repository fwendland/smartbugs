/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 44
 */
































 


        if(_am<=balances[msg.sender]&&block.number>lastBlock)
        {
            // <yes> <report> REENTRANCY
            if(msg.sender.call.value(_am)())
            {
                balances[msg.sender]-=_am;
                TransferLog.AddMessage(msg.sender,_am,"CashOut");
            }
        }

