pragma solidity ^0.8.7;

contract Auction {
    address public seller;
    uint public latestBid;
    address public latestBidder;

    constructor(uint startingPriceWei) {
        // ...
    }

    function bid() public {
        // ...
    }

    function finishAuction() public {
        // ...
    }
}
