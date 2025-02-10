# Hyperledger Fabric Project: Supply Chain Chaincode

This subproject contains **Go chaincode** for a Supply Chain Management use case, deployed on a Hyperledger Fabric private blockchain network.

<br/>

## Overview
- **Chaincode**: `smartcontract.go`  
- **Objective**: 
  - Create, update, and transfer ownership of “products”  
  - Demonstrate ledger read/write, including `InitLedger`, `CreateProduct`, `UpdateProduct`, `TransferOwnership`, etc.
- **Language**: Go (version >= 1.20 recommended)  
- **Tools**: 
  - [Hyperledger Fabric](https://github.com/hyperledger/fabric)  
  - [Docker & Docker Compose](https://www.docker.com/)  
  - Fabric samples (`fabric-samples/test-network`) for local test environment

<br/>

## Scripts
1. **`chaincode/smartcontract.go`**:  
   - Defines a `Product` struct and a `SupplyChainContract` struct that implements Fabric’s `contractapi.Contract`.
   - Key methods: 
     - `InitLedger` (initial data), 
     - `CreateProduct`, 
     - `UpdateProduct`, 
     - `TransferOwnership`, 
     - `QueryProduct`, etc.
2. **`Dockerfile`** (optional): Provides a custom build environment for your chaincode if needed.

<br/>

## Prerequisites
1. **Docker & Docker Compose** installed.  
2. **Go** installed (e.g., `go version` → 1.20+).  
3. **Fabric Samples**: 
   ```
   git clone https://github.com/hyperledger/fabric-samples.git
   ```
4. **Fabric Binaries**:
   ```
   cd fabric-samples
   curl -sSL https://bit.ly/2ysbOFE | bash -s
   ```
   or newer scripts from the Fabric docs.

<br/>

## Local Deployment Steps
1. **Start the Test Network**
   ```
   cd fabric-samples/test-network
   ./network.sh down
   ./network.sh up
   ./network.sh createChannel
   ```
   This brings up 2 orgs (Org1, Org2) and an orderer node, joined on mychannel.
2. **Package & Install Chaincode**
   - From the `test-network` directory, define environment variables (for Org1 or Org2).
     ```
     cd fabric-samples/test-network
     export PATH=${PWD}/../bin:$PATH
     export FABRIC_CFG_PATH=${PWD}/../config/

     # Package
     peer lifecycle chaincode package supplyChain.tar.gz \
       --path <path-to-chaincode> \
       --lang golang \
       --label supplyChain

     # Install on Org1
     # Set Org1 env variables...
     peer lifecycle chaincode install supplyChain.tar.gz

     # Install on Org2
     # Set Org2 env variables...
     peer lifecycle chaincode install supplyChain.tar.gz
     ```
3. **Approve and Commit**
   - **Query installed** chaincode, note the `Package ID`, and run `approveformyorg`.
   - Commit the chaincode to `mychannel` with `peer lifecycle chaincode commit ....`.
4. **Invoke Chaincode**
   - **InitLedger**:
     ```
     peer chaincode invoke \
       -o localhost:7050 \
       --ordererTLSHostnameOverride orderer.example.com \
       --tls \
       --cafile ${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
       -C mychannel -n supplyChain \
       --peerAddresses localhost:7051 \
       --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt \
       --peerAddresses localhost:9051 \
       --tlsRootCertFiles ${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt \
       -c '{"function":"InitLedger","Args":[]}'
     ```
   - **Query** products:
     ```
     peer chaincode query -C mychannel -n supplyChain -c '{"Args":["GetAllProducts"]}'
     ```

<br/>

## Testing & Usage
- **Functions** to test:
  - `InitLedger()`
  - `CreateProduct(id, name, owner, description, category)`
  - `UpdateProduct(id, newStatus, newOwner, newDescription, newCategory)`
  - `TransferOwnership(id, newOwner)`
  - `QueryProduct(id)`
- **Validation**:
  - Check if the ledger has the correct product states after each operation.

<br/>

## Acknowledgments
- Dataset, test cases, etc. provided by Dr. Swathi Punathumkandi from Arizona State University.

 </br>

## License
This project is released under the `MIT License`. That means you’re free to use, modify, and distribute the code, but you do so at your own risk.

 </br>

## Contact
Author: Varshith Dupati </br>
GitHub: @dvarshith </br>
Email: dvarshith942@gmail.com </br>
Issues: Please open an issue on this repo if you have questions or find bugs. </br>
