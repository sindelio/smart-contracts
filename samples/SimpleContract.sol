pragma solidity^0.4.19;
contract simpleContract{
	string test;
	function simpleContract(string _init) public {
		test = _init;
	}
	function setTest(string _newTest) public {
		test = _newTest;
	}
	function getTest() public view returns(string){
		return test;
	}
}