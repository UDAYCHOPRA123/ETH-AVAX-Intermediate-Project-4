// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable ,ERC20Burnable{
     mapping(uint => uint) public Priceofitem; 
    bool public _paused;
    constructor() ERC20("DegenToken", "DGN") Ownable(msg.sender) { 
         _paused = false;
         Priceofitem[1] = 100;
        Priceofitem[2] = 200;
        Priceofitem[3] = 1000;
      }

    // Mint new tokens, only the owner can call this function
    function mint(address to, uint amount) public onlyOwner {
        _mint(to, amount);
    }
    
      function showRewards() public pure returns (string memory) {
         string memory ListofRewards = "1: SpiderMan Suit - 100 DG Tokens \n: 2. Captian America Suit - 200 DG Tokens \n: 3. Legendary IronMan Suit- 1000 DG Tokens";
        
        return ListofRewards;
    }
    function redeemRewards(uint256 _itemprice) public {
        require(
            Priceofitem[_itemprice] != 0,
            "Please select a valid option"
        );
        require(
            balanceOf(msg.sender) >= Priceofitem[_itemprice],
            "You don't have engouh DG Tokens "
        );
        burn(Priceofitem[_itemprice]);
        
    }


    // Burn tokens that are no longer needed
    function burnToken(uint amount) public {
        _burn(msg.sender, amount);
    }

    // Transfer tokens
    function transferTokens(address to, uint256 amount) public returns (bool) {
        _transfer(msg.sender,to, amount);
        return true;
    }

    // Check token balance
    function checkBalance(address account) public view returns (uint) {
        return balanceOf(account);
    }
    function emergencyPause() public onlyOwner {
    _paused = true;
    
}

    function emergencyUnpause() public onlyOwner {
    _paused = false;
    
}   }

