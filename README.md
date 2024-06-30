# DegenGamingToken (DGT)

## Description

Welcome to DegenGamingToken, the innovative token created for Degen Gaming 🎮. This unique token is designed to reward players and elevate the gaming experience. Players can earn DGTs through gameplay and exchange them for exciting rewards in the in-game store. This initiative aims to boost player loyalty and retention by offering valuable incentives 🧠.

Degen Gaming has chosen the Avalanche blockchain for this project, leveraging its speed and low transaction fees to create a seamless and cost-effective token. With DGTs, players can not only purchase in-game items but also trade tokens with other players, opening up new opportunities for growth and engagement 📈.
### Functionalities Added: 
1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.
6. Showing Tokens: We can see which tokens are present fo us to redeem.
7. EmergencyPause: This Function used to pause our transaction when any emergency happens like if we want to change some inputs after stating the transaction it will pause it.
8. EmergencyUnpause: This Function used to unpause our transaction when the emergency is resolved.  

## Video Demonstration
[Video Demo](https://www.loom.com/share/806a0723d5714644b0ff1cf336740e36?sid=08211ba7-22e9-49e0-a7d4-08fa57e4ac86)

## Steps to install and run this project

1. Clone this repository:
   ```bash
   git clone https://github.com/UDAYCHOPRA123/ETH-AVAX-Intermediate-Project-4.git
   cd eth_avax_intermediate_module_4
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Install MetaMask and create an account.
4. Connect to the Fuji testnet on [testnet.snowtrace.io](https://testnet.snowtrace.io).
5. Obtain test AVAX for the Fuji testnet by following these instructions.[INSTRUCTIONS](https://docs.avax.network/build/dapp/smart-contracts/get-funds-faucet)
6.  Compile and deploy the smart contract:
   ```bash
   npx hardhat compile
   npx hardhat run deploy.js --network fuji
   ```
7. Copy the deployed contract address and paste it into testnet.snowtrace.io to verify the contract.
8. Open [Remix IDE](https://remix.ethereum.org/) and navigate to the Deploy and Run Transactions section.
9. Select `Injected Provider: MetaMask` in the dropdown and set the owner account.
10. Click On Deploy Button and You are Ready to use all the functionalities of your Contract.

## Authors
Metacrafter UDAY CHOPRA ---->
[UDAY CHOPRA](https://www.linkedin.com/in/uday-chopra-86701b2b0/)

## License

This project is licensed under the MIT License.
