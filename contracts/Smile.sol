//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract Smile is ERC721URIStorage {
    using Counters for Counters.counter; 
    Counters.counter private _tokenIds; 

    constructor() ERC721 ("SquareNFT", "SQUARE") {
        console.log("NFT contract, whoa!");
    }

    function mintSmile() public {
        uint256 newItemId = _tokenIds.current(); 

        _safeMint(msg.sender, newItemId); 
        _setTokenURI(newItemId, "huh");
        _tokenIds.increment(); 
    }

    

}