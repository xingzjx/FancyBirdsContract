// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface IFancyNames {
    function setBasicNameOnMint(uint256 tokenId) external;
    function changeNameUpdater(uint256 tokenId, string memory newName) external;
}