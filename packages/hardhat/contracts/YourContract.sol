pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

contract YourContract {

    // If/Else ---------------------------------------------------
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way to write if / else statement
        return _x < 10 ? 1 : 2;
    }
    // -----------------------------------------------------------

    // While Loops -----------------------------------------------
    // Solidity supports for, while, and do while loops.
    // Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.
    // For the reason above, while and do while loops are rarely used.
    function loop() public {
        // for loop
        for (uint i=0; i<10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }

            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
