# Smart Contracts

In **smart_contract_samples** there's a collection of useful Ethereum smart contracts written in Solidity.

1. SimpleContract.sol - Basic smart contract for test purposes. 
2. ERC20.sol - Standard token smart contract.
3. ERC20_updated.sol - ERC20 standard Ethereum token smart contract updated for latest version of the Solidity compiler (0.4.21).
4. Ownership.sol - Ownership smart contract. Used to ascertain ownership before executing functions.
5. FaultTolerance.sol - Fault tolerance smart contract. Used to to freeze accounts if there are any problems.
6. ProofOfExistence.sol - Smart contract that gives proof of existence to a document. used to create SHA hashes from input strings and store them into the Ethereum Blockchain.
7. Deadline.sol - Deadline smart contract. Used to ascertain the expiration of a deadline before executing functions.
8. Crowdsale.sol - Crowdsale smart contract. Used to raise funds for a project.
9. Ballot.sol - Voting smart contract. Used to create voting processes and to issue votes
10. RemotePurchase.sol - Smart contract that allows one to sell an asset through the Ethereum platform.
11. SimpleAuction.sol - Basic auction smart contract. Allows bidding and closes the auction in a specific time.
12. BlindAuction.sol - Auction that supports blind bids and fake bids.
13. IsContract.sol - Library that has a function that can verify if an address is an EOA or a smart contract.
14. StorageVSMemory.sol - Smart contract that shows some differences between the persistent memory and the non-persistent memory. In particular, the classic contrast of parameters by reference vs parameters by value is demonstrated.

In **truffle_test** there's a test for compiling, deploying and testing smart contracts locally with Truffle and testRPC.

In **web3_test** there's a test for creating cliente-side applications that can interact with Ethereum based blockchains.
Web3.js is the official Javascript library for Ethereum.

And there's also **solidity_notes.txt**, my personal study notes so far about Solidity, smart contracts and the Ethereum platform.

