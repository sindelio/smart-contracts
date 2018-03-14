pragma solidity^0.4.21;

contract RemotePurchaseCustomized{
	address public seller;
	address public buyer;
	uint256 public price;
	enum State {Opened, Purchased, Confirmed, Aborted}
	State public state;
	string public description;

	event Created();
	event Purchased();
	event Confirmed();
	event Aborted();

	/// Constructor
	function RemotePurchaseCustomized(uint256 _price, string _description) public {
		seller = msg.sender;
		price = _price;
		state = State.Opened;
		description = _description;
	}

	modifier condition(bool _condition) {
        require(_condition);
        _;
	}

	modifier onlySeller(){
		require(seller == msg.sender);
		_;	
	}

	modifier onlyBuyer(){
		require(buyer == msg.sender);
		_;
	}

	modifier inState(State _state){
		require(state == _state);
		_;
	}

	function abort() public onlySeller inState(State.Opened) {
		state = State.Aborted;
		emit Aborted();
	}

    function confirmPurchase()
        public
        inState(State.Opened)
        condition(msg.value == price)
        payable
    {
        emit Purchased();
        buyer = msg.sender;
        state = State.Purchased;
    }

	function confirmReceived() public onlyBuyer inState(State.Purchased){
		state = State.Confirmed;
		emit Confirmed();
		seller.transfer(address(this).balance);
	} 

	function getBalance() public view returns(uint256){
		return address(this).balance;
	}

}