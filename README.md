
# Adventures in Ethereum 

### Purpose
This repository represents a best-effort attempt at documenting explorations into Ethereum contracts.

### Requirements:
* docker
* docker-compose
* self-hate (not a real dependency)
* ethereum-wallet
* ETH - (fake is good enough for testnet: https://faucet.rinkeby.io/)

### Contents:
This repository contains a `docker-compose.yml` which  attempts to encapsulate any runtime requirements for developing and testing Ethereum contracts written in Solidity.

Currently it encapsulates 3 containers:
* `client` - an ethereum client that syncs with the ethereum network
* `simulator`- contains the `solc` compiler along with scaffolding to run and test solidity contracts locally (work-in-progress)
* `compiler`- a compiler (`solc` for `solidity` contract programming language. (*DEPRECATED in favor of `simulator`*)

### Key commands:
The docker-compose.yml file is an be informative read, the below are the more pertinent commands.


#### Run Ethereum Client 
```
make run_client
```
This will start the ethereum client, which will immediately start syncing with the Ethereum Network and download gigabytes (10 GB at time of this writing) to a directory mounted under `root_home` 

#### Follow logs for the client (omit the -f for just a current dump)
```
docker-compose logs -f client
```
#### Build simulator:
```
make build_sim
```
#### Run simulator in interactive shell: 
```
make sim
```
