// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract RepaetInput {
    // this function get 2 input one number and one string
    //and then return repeated string
    function repeat(uint8 x, string memory s) public pure returns (string memory) {
        string memory result = "";
        for(uint8 i = 0; i < x; i++){
            result = string.concat(result, s);
        }

        return result;
    }
}