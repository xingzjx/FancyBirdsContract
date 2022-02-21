// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


import "./interfaces/IFancyNames.sol";


/**

该合约官方并未开源，这里自己实现

 */
contract FancyNames is  IFancyNames {

    function setBasicNameOnMint(uint256 tokenId) external {
        (bool success,) = msg.sender.call(abi.encodeWithSignature("setBaseURI(string)", "test"));
        require(success == true, "call failure");
        
    }

    function changeNameUpdater(uint256 tokenId, string memory newName) external {

    }

}