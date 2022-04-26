pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

/**
Mapping
Maps are created with the syntax mapping(keyType => valueType).
The keyType can be any built-in value type, bytes, string, or any contract.
valueType can be any type including another mapping or an array.
Mappings are not iterable.
*/
contract YourContract {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }


    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function getNested(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function setNested(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function removeNested(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }

}

// contract NestedMapping {
//     // Nested mapping (mapping from address to another mapping)
//     mapping(address => mapping(uint => bool)) public nested;

//     function get(address _addr1, uint _i) public view returns (bool) {
//         // You can get values from a nested mapping
//         // even when it is not initialized
//         return nested[_addr1][_i];
//     }

//     function set(
//         address _addr1,
//         uint _i,
//         bool _boo
//     ) public {
//         nested[_addr1][_i] = _boo;
//     }

//     function remove(address _addr1, uint _i) public {
//         delete nested[_addr1][_i];
//     }
// }
