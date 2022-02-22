// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


import "./interfaces/IFancyNames.sol";
import "@openzeppelin/contracts/utils/Strings.sol";


/**

该合约官方并未开源，这里自己实现

 */
contract FancyNames is  IFancyNames {

    function setBasicNameOnMint(uint256 tokenId) external {
        string memory id = Strings.toString(tokenId);
        // 字符串拼接
        string memory tokenName = string(bytes.concat(bytes("FancyBirds#"), "-", bytes(id)));
        bytes memory payload = abi.encodeWithSignature("setBaseURI(string)", tokenName);
        address addr = msg.sender;
        (bool success,) = addr.call(payload);
        require(success == true, "setBaseURI call failure");
    }

    function changeNameUpdater(uint256 tokenId, string memory newName) external {

    }


}