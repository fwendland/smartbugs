/*
 * @source: https://github.com/thec00n/smart-contract-honeypots/blob/master/CryptoRoulette.sol
 * @vulnerable_at_lines: 40,41,42
 */
































    function play(uint256 number) payable public {
        require(msg.value >= betPrice && number <= 10);
        // <yes> <report> OTHER - uninitialized storage
        Game game; //Uninitialized storage pointer
        game.player = msg.sender;
        game.number = number;
        gamesPlayed.push(game);

        if (number == secretNumber) {
            // win!
            msg.sender.transfer(this.balance);
        }

        shuffle();
        lastPlayed = now;
    }
