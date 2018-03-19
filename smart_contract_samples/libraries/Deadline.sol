pragma solidity^0.4.19;

contract Deadline{
	uint256 public deadline;
	bool public deadlineReached = false;

	function deadlineOver(){
		if(now >= deadline){
			deadlineReached = true;
			DeadlineReached(true);
		}
		else{
			deadlineReached = false;
		}
	}

	modifier afterDeadline(){
		require(now >= deadline);
		_;
	}

	event DeadlineReached(bool isFinished);
}