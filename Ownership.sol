pragma solidity^0.4.15;
// Ownership contract, pretty straightforward
contract Ownership {
	address public owner;
	function Ownership() public{
		owner = msg.sender;
	}
	modifier onlyOwner{
		require(owner == msg.sender);
		_;
	} 
	function transferOwnership(address _newOwner) onlyOwner public{
		owner = _newOwner;
	}
}