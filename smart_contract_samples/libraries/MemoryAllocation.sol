pragma solidity ^0.4.0;

library MemoryAllocation {
    function malloc(uint _size) public view returns (bytes _allocated) {
        _allocated = new bytes(_size);
    }
}