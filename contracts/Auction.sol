pragma solidity ^0.8.7;

contract Auction {
    address public seller;
    uint public latestBid;
    address public latestBidder;
    bool public auctionFinished;

    constructor(uint startingPriceWei) {
        // ...
        seller = msg.sender;
        latestBid = startingPriceWei;
        auctionFinished = false;
    }

    function bid() public {
        // ...
         require(msg.value > latestBid, "Bid must be higher than the latest bid");
        require(!auctionFinished, "Auction is already finished");
        if (latestBidder != address(0)) {
            payable(latestBidder).transfer(latestBid);
        }
        latestBid = msg.value;
        latestBidder = msg.sender;
    }

    function finishAuction() public {
        // ...
    }
}
