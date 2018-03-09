# HOW TO USE THIS WEB3 TEST

### Step 0:

After downloading this folder, move into it and install the dependencies:

```
$ npm install
```

The web3.js is specified in the package.json file, so it should be installed in a folder named node_modules.

### Step 1:

Activate the testRPC to create an instance of a local Ethereum based blockchain.
On a terminal, type;

```
$ testrpc
```

### Step 2:

Go into the Remix online IDE, in the Run tab, Environment and select Web3 Provider.
Chose OK twice to interact with the local Ethereum based blockchain, created with testRPC, running in port 8545.

### Step 3:

Run the smart contract in the Remix IDE with the Create button, the reddish button on the right of the interface.

### Step 4:

In the Remix online IDE, go to the Compile tab, Details and copy the smart contract ABI (Application Binnary Interface). Paste it into the index.html in the following line:

```
var CoursetroContract = web3.eth.contract(/* PASTE THE ABI HERE */);
``` 

### Step 5:

Go to the Run tab in the Remix IDE, copy the deployed smart contract address.
Paste it into the index.html in the following line:

```
var Coursetro = CoursetroContract.at(/* COPY THE SMART CONTRACT ADDRESS HERE */);
``` 

Note that it is a string, so it should be wrapped on single quotes.

### Step 6:

Run the index.html in your browser. 
The event interaction with the local Ethereum like blockchain should work.





