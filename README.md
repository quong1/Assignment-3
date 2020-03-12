# Assignment-3

## Reading
The project is based on the two following readings:
Part 1: https://medium.com/crowdbotics/how-to-build-a-simple-capped-crowdsale-token-using-openzeppelin-library-part-1-2789ec642308
Part 2: https://blog.crowdbotics.com/how-to-build-a-simple-capped-crowdsale-token-using-openzeppelin-library-part-2/

## Dependencies
Install these prerequisites:
- NPM: https://nodejs.org
- Truffle: https://github.com/trufflesuite/truffle
- openZeppelin library:
```
npm install @openzeppelin/contracts
```

## Step 1: Clone the project

## Step 2: install dependencies
On the root folder:
```
$ npm install
```
## Step 3: Compile & Deploy Election Smart Contract
```
truffle compiletruffle developmigrate --reset
```

## Assignment:
1) Change the minimum contribution to 7 Ether.

Solution:
```
uint256 public investorMinCap = 7000000000000000000;
```

2) Add method, getTokensLeft, to report how many tokens are left. 
Solution:
