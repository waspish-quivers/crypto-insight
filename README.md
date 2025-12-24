

Deployed on Base Mainnet.

Blockchain Insight is a tool designed to provide wallet connection and real-time blockchain insights on the Base network. It enables users to inspect block details, check address balances, and monitor onchain activity using Coinbase Wallet SDK and Base RPC endpoints.

---

## Base ecosystem alignment

Built for Base.

Supported networks:
- Base Mainnet  
  chainId (decimal): 8453  
  Explorer: https://basescan.org  

- Base Sepolia  
  chainId (decimal): 84532  
  Explorer: https://sepolia.basescan.org  

The application is designed to interact with Base networks using their respective RPC endpoints.

---

## Repository structure

- app/blockchain-insight.ts  
  Browser-based script enabling wallet connection, chain validation, and blockchain data insights.

- contracts/  
  Solidity contracts deployed to Base Sepolia for testnet validation:
  - BasePaymentVault.sol — A simple payment vault that accepts ETH deposits and allows the owner to withdraw funds.  
  - BaseKeyValueStore.sol — A generic on-chain key-value storage contract mapping user addresses to string values.
  - BaseTodoList.sol — A minimal on-chain to-do list where each wallet can add tasks and mark them as completed.

- package.json  
  Dependency manifest linking the project to Coinbase SDKs and Base GitHub repositories.

- README.md  
  Complete documentation including project setup, functionality, and licensing.

---

## Libraries used

- @coinbase/wallet-sdk  
  SDK to enable wallet connection and authentication.

- viem  
  RPC client for interacting with Base's blockchain data.

- Coinbase GitHub repositories  
  Integrated to leverage Coinbase's open-source ecosystem.

- Base GitHub repositories  
  Utilized for Base-specific tooling and integration.

---

## Installation and execution

To run the project:
1. Install dependencies using Node.js
2. Start the development server
3. Open the app in a modern browser

Expected outcomes:
- Wallet address and Basescan link displayed
- Active network information shown
- Blockchain data such as block details and address balances accessible

---

## License

MIT License

Copyright (c) 2025 waspish-quivers

Permission is granted to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the software under the following conditions:

The above copyright notice and this permission notice must be included in all copies or substantial portions of the software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED.

---

## Author

GitHub: https://github.com/waspish-quivers

Email: waspish.quivers-0k@icloud.com  

Public contact: https://x.com/Jerrica55438419  

---

## Testnet Deployment (Base Sepolia)

Network: Base Sepolia  
chainId (decimal): 84532  
Explorer: https://sepolia.basescan.org  

Contract #1 address:  
0x5A8F3cD1E9B6A2C4F0d7eB8a19C6E2F4D3A7B901

Deployment and verification:
- https://sepolia.basescan.org/address/0x5A8F3cD1E9B6A2C4F0d7eB8a19C6E2F4D3A7B901
- https://sepolia.basescan.org/0x5A8F3cD1E9B6A2C4F0d7eB8a19C6E2F4D3A7B901/0#code  

Contract #2 address:  
0xB9E2D6A5F8C41A7e3d0B9C6F5A2E1D8c4F7B0E92

Deployment and verification:
- https://sepolia.basescan.org/address/0xB9E2D6A5F8C41A7e3d0B9C6F5A2E1D8c4F7B0E92
- https://sepolia.basescan.org/0xB9E2D6A5F8C41A7e3d0B9C6F5A2E1D8c4F7B0E92/0#code  

Contract #3 address:  
0x3D7aB2F4c9E18A6d5f0B1C8E2A4d6F9b7C1E0A35

Deployment and verification:
- https://sepolia.basescan.org/address/0x3D7aB2F4c9E18A6d5f0B1C8E2A4d6F9b7C1E0A35
- https://sepolia.basescan.org/0x3D7aB2F4c9E18A6d5f0B1C8E2A4d6F9b7C1E0A35/0#code  
