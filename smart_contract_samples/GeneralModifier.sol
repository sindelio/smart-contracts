pragma solidity ^0.4.21;

library GeneralModifier{

	modifier condition(bool _condition) {
        require(_condition);
        _;
	}
	
}