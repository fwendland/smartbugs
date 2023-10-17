/*
 * @source: https://ericrafaloff.com/analyzing-the-erc20-short-address-attack/
 * @author: -
 * @vulnerable_at_lines: 18
 */











     // <yes> <report> SHORT_ADDRESSES

         if (balances[msg.sender] < amount) return false;
         balances[msg.sender] -= amount;
         balances[to] += amount;
         Transfer(msg.sender, to, amount);
         return true;

