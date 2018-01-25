pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CrowdsaleCommunityFund is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CrowdsaleCommunityFund(address _owner)  UpgradeableToken(_owner) {
    name = "CrowdsaleCommunityFund";
    symbol = "CCF";
    totalSupply = 5000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}