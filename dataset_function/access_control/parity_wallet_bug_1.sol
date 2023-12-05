/*
 * @source: https://github.com/paritytech/parity-ethereum/blob/4d08e7b0aec46443bf26547b17d10cb302672835/js/src/contracts/snippets/enhanced-wallet.sol#L216
 * @author: parity
 * @vulnerable_at_lines: 223
 */






















































































































































































































  // constructor - just pass on the owner array to the multiowned and
  // the limit to daylimit
  // <yes> <report> ACCESS_CONTROL
  function initWallet(address[] _owners, uint _required, uint _daylimit) {
    initDaylimit(_daylimit);
    initMultiowned(_owners, _required);
  }












































































































































































































