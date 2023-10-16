/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 33
 */

























    function sendMoney(address _target, uint _value, bytes _data) public onlyOwner {
        // <yes> <report> UNCHECKED_LL_CALLS
        _target.call.value(_value)(_data);
    }
