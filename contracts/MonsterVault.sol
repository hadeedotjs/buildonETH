// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Importing required libraries and interfaces from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract VaultFactory is Ownable, ERC721Holder, ReentrancyGuard {
    //state
    enum State {
        inactive,    
        activeOffer  
    }

    
    