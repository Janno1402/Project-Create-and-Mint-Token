// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract ThisToken is ERC20{
    address private contractOwner;

    constructor() ERC20("ThisToken", "TTN"){
        contractOwner = msg.sender;
    }

    // A mint function where only the contract owner should be able to mint
    function mintTokens(address to, uint256 amount) public {
        require(msg.sender == contractOwner, "Only the contract owner is able to mint tokens");
        _mint(to, amount);
    }

    // Any user should be able to transfer tokens
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        return super.transfer(recipient, amount);
    }

    // Any user should be able to burn tokens
    function burnTokens(uint256 amount) public{
        _burn(msg.sender, amount);
    }

}