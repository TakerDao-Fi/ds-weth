// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.5.12;

import "./weth9.sol";

contract DSWethFactory {
    event LogMake(address indexed creator, address token);

    function make() public returns (WETH9_ result) {
        result = new WETH9_();
        emit LogMake(msg.sender, address(result));
    }
}
