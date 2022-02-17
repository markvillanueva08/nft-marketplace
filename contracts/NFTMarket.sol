// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract NFTMarket is ReentrancyGuard {
    using Counters for Counters.counter;
    Count.Counter private _itemIds;
    
    address payable owner;
    uint256 listingPrice = 0.025 ether;

    constructor(){
        owner = payable(msg.sender);
    }
    struct MarketItem{
        uint itemId;
        address nftContract;
        uint256 tokenId;
        address payable seller;
        address payable owner;
        uint256 price;
        bool sold;
    }

    mapping(unit256 => MarketItem) private idToMarketItem;

    event MarketItemCreated(

    );
    function getListingPrice() public view returns (uint256){
        return listingPrice;
    }

    function createMarketItem(
        address nftContract,
        uint256 tokenId,
        uint256 price 
    ) public payable nonReentrant {
        require (price > 0, "Price must be atleas 1 wei");
        require (msg.value == listingPrice, "Price must be equal to listing price")

        _itemIds.increment();
        uint256 itemId = _itemIds.current();
    }
}