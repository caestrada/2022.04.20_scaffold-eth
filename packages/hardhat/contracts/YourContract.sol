pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

// Variables
contract YourContract {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables are NOT saved to the blockchain.
        uint i = 456;
        console.log('Local variable', i);

        // Here are some global variables.
        uint timestamp = block.timestamp; // Current block timestamp
        console.log('Current timestamp', timestamp);
        address sender = msg.sender; // Address of the caller
        console.log('Address of caller', sender);
    }
}