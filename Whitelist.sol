// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

contract Whitelist {
    address public owner;

    constructor () {
        owner = msg.sender;
    }
    
    address [] public Whitelisted;
    mapping (address => bool) public IsWhitelisted;

    function addWallet(address _wallet) public {
        require (msg.sender == owner, "You are not the owner");
        Whitelisted.push (_wallet);
        IsWhitelisted [_wallet] = true;
    }
}