pragma solidity ^0.4.19;

library Modifiers {

    modifier condition(bool _condition) {
        require(_condition);
        _;
    }

    modifier costs(uint _price) {
        if (msg.value >= price) {
            _;
        }
    }

    /// Reentrant calls cannot call the modified function again.
    bool locked;
    modifier noReentrancy() {
        require(!locked);
        locked = true;
        _;
        locked = false;
    }

}