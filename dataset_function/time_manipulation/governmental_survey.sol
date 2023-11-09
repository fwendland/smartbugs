/*
 * @source: http://blockchain.unica.it/projects/ethereum-survey/attacks.html#governmental
 * @author: -
 * @vulnerable_at_lines: 27
 */
















  function invest() {
    if (msg.value<jackpot/2) throw;
    lastInvestor = msg.sender;
    jackpot += msg.value/2;
    // <yes> <report> TIME_MANIPULATION
    lastInvestmentTimestamp = block.timestamp;
  }
