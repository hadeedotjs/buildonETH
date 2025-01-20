// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Yohan is ERC721, ERC721URIStorage, ERC721Burnable, Ownable {
    constructor(address initialOwner)
        ERC721("Yohan", "TWIN")
        Ownable(initialOwner)
    {}

    event Minting(address indexed to, uint256 indexed _tokenid, string uri);

    function safeMint(
        address to,
        uint256 _tokenid,
        string memory uri
    ) public onlyOwner {
        emit Minting(to, _tokenid, uri);
        _safeMint(to, _tokenid);
        _setTokenURI(_tokenid, uri);
    }

    //overrides

    function tokenURI(uint256 _tokenid)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(_tokenid);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
