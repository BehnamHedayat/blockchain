// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract thiredAngle {
//this function get 2 angle of triangle and then return another angle.

    function otherAngle(int angl1, int angl2) public pure returns (int) {
        int a1 = angl1;
        int a2 = angl2;
        int a3;
        a3 = 180 - a1 - a2;
        return a3;
    }
    
}
