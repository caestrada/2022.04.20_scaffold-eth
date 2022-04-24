pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

contract YourContract {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;
    // uint public immutable MY_UINT2;

    // Immutable variables could be set once in the constructor
    constructor() {
        MY_ADDRESS = msg.sender;
        MY_UINT = 123;
    }

    // This won't work since immutables could only be initiallize inline 
    // or in the constructor. 
    // function doSomething() public {
    //     MY_UINT2 = 1;
    // }
}
