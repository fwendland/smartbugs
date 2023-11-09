/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 31
 */






















        require (!claimed);
        require(submission < 10);
        // <yes> <report> FRONT_RUNNING
        msg.sender.transfer(reward);
        claimed = true;

