# ABOUT TRUFFLE AND TESTRPC

Truffle is a Javascript library for compilation, link and deployment of smart contracts for the Ethereum platform.
testRPC is a Javascript library for local simulation of an Ethereum blockchain, for test purposes.
Using both at the same time allows one to compile, link, deploy and test smart contracts locally. 
That is interesting from a time efficiency perspective, specially in the first stages of development.
In later stages it is necessary to test the smart contracts in a complete Ethereum based environment, such as the Ropsten test net.

# HOW TO USE THIS TRUFFLE AND TESTRPC TEST

### Step 0: Download an example box from rTruffle website. For example:

```
$ truffle unbox metacoin
``` 

### Step 1: Edit the **truffle.js** network configuration file. Copy the following code into the file:

```
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    }
  }
};
``` 
This is vital so that Truffle can interact with testRPC through port 8545.

### Step 2: Activate testRPC local Ethereum blockchain:

```
$ testrpc
```

### Step 3: Compile everything:

```
$ truffle compile
```

### Step 4: Migrate, a.k.a deploy, the smart contract to the testRPC Ethereum blockchain instance:

```
$ truffle migrate
```

### Step 5 (Optional): Apply any tests:

```
$ truffle test
```

### Step 6: Start a truffle console to issue commands to the running smart contract:

```
$ truffle console
```
### Step 7: This is where it gets fun. 

```
truffle(development)> 
```



