//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NewContract is ERC721 {
    constructor() ERC721("olive-block", "OBLBOOLBOL") {}

    function message() public pure returns(string memory) {
        return "Data security revolution with blockchain - vdupati1";
    }
}