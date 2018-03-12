pragma solidity 0.4.18;

library IsContract {
    // Assembly verifies the size of the code in the account. 
    // If the size of the code is greater than zero, then that account refers to a smart contract.
    // Else it is an Externally Owned Account - EOA.
    function isContract(address _addr) internal view returns (bool) {
        uint length;
        assembly {
            //Retorna o codigo de uma conta
            length := extcodesize(_addr)
        }
        return (length>0);
    }
}