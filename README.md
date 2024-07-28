# Project-Create-and-Mint-Token
This Solidity smart contract contains "ThisToken," is an ERC20-compliant token with additional functionality for the owner to mint tokens and for any user to check their token name, token symbol, balance, transfer, and burn tokens. 
# Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.  The contract has three functions called mintTokens, transfer and burnTokens. The mint function adds an indicated value to the corresponding total supplies of the specified token and adds that value to the balance associated with the Ethereum addresses. The burn function allows any user to burn tokens and operates the opposite way, where it deducts an indicated value to the corresponding total supplies of the specified token as well as deducts that value to the associated Ethereum addresses balance. The transfer function allows any user to transfer tokens from their balance to another specified address
## Getting Started

### Executing program

To run this program, you can utilize Remix, an online Solidity IDE. Begin by visiting the Remix website at https://remix.ethereum.org/.

After accessing the Remix website, create a new file by clicking the "+" icon in the left-hand sidebar. Save the file with a .sol extension (for example, FinalProject.sol). Then, copy and paste the following code into the file:

```javascript
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
    }

    // Any user should be able to transfer tokens
    function transfer(address recipient, uint256 amount) public override returns (bool) {
    }

    // Any user should be able to burn tokens
    function burnTokens(uint256 amount) public{
    }
}

```

To compile the code, navigate to the "Solidity Compiler" tab in the left-hand side of the sidebar. Ensure the "Compiler" version is set to "0.8.13", and then click the "Compile CreateAndMintToken.sol" button.

After compiling, you can deploy the contract by going to the "Deploy & Run Transactions" tab in the left-hand side of the sidebar. Choose the "My Token - CreateAndMintToken.sol" contract from the dropdown menu and click the "Deploy" button.

Once deployed, you can interact with the contract by calling the balance of the indicated address, as well as making use of the mint, transfer, and burn functions that were explained before. Select the "mint", "transfer", and "burn" functions in the left-hand sidebar, and then press the "transact" button to execute the function and add, transfer, and deduct values from the balance of the associated address indicated.

## Authors

Metacrafter Student Christian
[@_cbso](https://x.com/cbso_)

## License

This project is licensed under the Christian Benjamin License - see the LICENSE.md file for details
