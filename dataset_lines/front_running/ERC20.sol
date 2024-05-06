/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/transaction_order_dependence/ERC20.sol
 * @author: -
 * @vulnerable_at_lines: 110,113
 */







































































































  // <yes> <report> FRONT_RUNNING

    require(spender != address(0));
     // <yes> <report> FRONT_RUNNING
    _allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;

