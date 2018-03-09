pragma solidity^0.4.15;

import "./Ownership.sol";

contract FaultTolerance is Ownership{
	mapping (address => bool) public frozenAccounts;

	event FrozenFunds(address _target, bool _frozen);

	function freezeAccount(address _target, bool _freeze) onlyOwner public {
        frozenAccounts[_target] = _freeze;
        FrozenFunds(_target, _freeze);
    }
}