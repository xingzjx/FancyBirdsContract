// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


import "./interfaces/IFancyNames.sol";


/**

该合约官方并未开源，这里自己实现

 */
contract FancyNames is  IFancyNames {

    function setBasicNameOnMint(uint256 tokenId) external {
        bytes memory payload = abi.encodeWithSignature("setBaseURI(string)", "test");
        address addr = msg.sender;
        (bool success,) = addr.call(payload);
        require(success == true, "setBaseURI call failure");
    }

    function changeNameUpdater(uint256 tokenId, string memory newName) external {

    }

}