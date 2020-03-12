pragma solidity >= 0.5.0 < 0.7.0;

import "openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";

contract ExampleTokenCrowdsale is Crowdsale, MintedCrowdsale, CappedCrowdsale{

	//minimum investor Contribution - 7000000000000000000
	//maximum investor Contribution - 50000000000000000000
	uint256 public investorMinCap = 7000000000000000000;
	uint256 public investorHardCap = 50000000000000000000;

	mapping(address => uint256) public contributions;

	constructor(uint256 rate, address payable wallet, IERC20 token, uint256 cap)
	Crowdsale(rate, wallet, token)
	CappedCrowdsale(cap)
	public{
	}


  function _preValidatePurchase(address _beneficiary,uint256 _weiAmount) internal {
    super._preValidatePurchase(_beneficiary, _weiAmount);
    uint256 _existingContribution = contributions[_beneficiary];
    uint256 _newContribution = _existingContribution.add(_weiAmount);
    require(_newContribution >= investorMinCap && _newContribution <= investorHardCap);
	contributions[_beneficiary] = _newContribution;     
  }
  
  function getTokensLeft(address _addr) constant returns(uint) {
      return _addr.balance;
  }
  
}
