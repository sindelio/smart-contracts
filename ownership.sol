pragma solidity^0.4.15;

contract ownership {
	address public owner;
	function ownership() public{
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