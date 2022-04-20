pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

contract YourContract {

  uint public count;

  // Function to get the current count
  function get() public view returns (uint) {
      return count;
  }

  // Function to increment count by 1
  function inc() public {
      count += 1;
  }

  // Function to decrement count by 1
  function dec() public {
      // This function will fail if count = 0
      count -= 1;
  }
}
