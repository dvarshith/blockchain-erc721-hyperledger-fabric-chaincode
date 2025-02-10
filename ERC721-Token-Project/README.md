# ERC-721 Token Project (Polygon Mumbai)

This subproject demonstrates a **non-fungible token (NFT)** smart contract using the **ERC-721** standard. The contract is deployed on the **Polygon Mumbai Testnet** (an EVM-compatible network).

<br/>

## Overview
- **Smart Contract**: `MyNFT.sol`
- **Language**: Solidity v0.8.25
- **Dependencies**: [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts)  
- **Tools**: 
  - [Remix IDE](https://remix.ethereum.org/) (online editor)  
  - [MetaMask](https://metamask.io/) for managing your account and paying gas fees in MATIC  
  - [Polygon Mumbai Testnet](https://wiki.polygon.technology/docs/develop/network-details/network)  

<br/>

## Project Files
- **`contracts/MyNFT.sol`**:  
  - Inherits from OpenZeppelin’s `ERC721`  
  - Provides `constructor()` to set `name` and `symbol`  
  - Has a `message()` function returning a custom string

<br/>

## Deployment Instructions
1. **Configure MetaMask**
   - Install the MetaMask browser extension.
   - Add **Polygon Mumbai** network to MetaMask (via Chainlist or manually).
   - Obtain **test MATIC** from a Mumbai Faucet.
2. **Open Remix**
   - Go to `Remix IDE`.
   - Import or copy `MyNFT.sol` into a new file in Remix.
3. **Compile**
   - In the Remix `Solidity Compiler` tab, select **0.8.25**.
   - Click **Compile MyNFT.sol**.
4. **Deploy**
   - In the `Deploy & Run Transactions` tab:
     - **Environment**: Injected Web3 (this uses MetaMask).
     - **Select** the contract (MyNFT) and click Deploy.
   - Confirm the MetaMask transaction (pay gas in test MATIC).
   - After confirmation, a new contract address is shown in Remix.
5. **Verification**
   - Call the `name()`, `symbol()`, or `message()` functions from Remix to ensure they return the correct values.
   - You can also view the contract in a block explorer like Polygonscan for Mumbai by pasting the contract address.

<br/>

## Testing
1. If your repo requires test scripts, you can create them in a Node/Hardhat environment or simply rely on **Remix** to call the functions.
2. For advanced usage, you might add a `scripts/` folder with a Hardhat or Truffle config to deploy.

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
