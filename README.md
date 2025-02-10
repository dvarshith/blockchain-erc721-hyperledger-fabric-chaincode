# Blockchain Projects: ERC-721 & Hyperledger Fabric

Welcome! This repository showcases **two major blockchain projects** completed for the CSE 598: Engineering Blockchain Applications course:

1. **ERC-721 Token Project** – Deployed on Polygon Mumbai Testnet (Ethereum-compatible)
2. **Hyperledger Fabric Private Blockchain Project** – Chaincode for a Supply Chain scenario

<br/>

## Repository Structure

```
blockchain-erc721-hyperledger-fabric-chaincode/
├── README.md                          # High-level readme for the entire repo
├── .gitignore                         # Global ignore patterns
├── ERC721-Token-Project/              # Folder for ERC-721 project
│   ├── README.md                      # Detailed readme for ERC721 project
│   ├── contracts/
│   │   └── MyNFT.sol                  # ERC-721 smart contract
├── Hyperledger-Fabric-Project/        # Folder for Fabric chaincode project
│   ├── README.md                      # Detailed readme for Hyperledger project
│   ├── chaincode/
│   │   ├── smartcontract.go           # Go chaincode
│   ├── Dockerfile                     # Dockerfile for building chaincode image (optional)
└── LICENSE (optional)                 # MIT license
```

<br/>

## 1. **ERC721-Token-Project**

- **Objective**: Create and deploy an ERC-721 (NFT) smart contract on the **Polygon Mumbai** Testnet.  
- **Tech Stack**:  
  - **Solidity**  
  - **Remix IDE**  
  - **MetaMask** browser extension  
  - **Polygon Mumbai** Testnet  
- For detailed instructions, see [ERC721-Token-Project/README.md](ERC721-Token-Project/README.md).

<br/>

## 2. **Hyperledger-Fabric-Project**

- **Objective**: Develop chaincode in Go for a **private blockchain** scenario with Hyperledger Fabric.  
- **Features**:  
  - Supply chain management (creating products, updating, transferring ownership)  
  - Demonstrates ledger read/write, transaction proposals, etc.  
- **Tech Stack**:  
  - **Hyperledger Fabric**  
  - **Go** language for chaincode  
  - **Docker** + Docker Compose  
- For detailed instructions, see [Hyperledger-Fabric-Project/README.md](Hyperledger-Fabric-Project/README.md).

<br/>

## How to Use This Repo

1. **Clone the Repository**  
   ```
   git clone https://github.com/dvarshith/blockchain-erc721-hyperledger-fabric-chaincode.git
   cd blockchain-erc721-hyperledger-fabric-chaincode
   ```
2. **Explore Each Subproject**
   - **ERC721-Token-Project**: Contains the `.sol` contract and instructions on deploying to Polygon.
   - **Hyperledger-Fabric-Project**: Contains `Go` chaincode, `Dockerfile`, and instructions for running a local Fabric network.

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
