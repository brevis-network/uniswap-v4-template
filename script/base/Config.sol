// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IERC20} from "forge-std/interfaces/IERC20.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";
import {Currency} from "v4-core/src/types/Currency.sol";

/// @notice Shared configuration between scripts
contract Config {
    /// @dev populated with default anvil addresses
    IERC20 constant token0 = IERC20(address(0x3490a659780016717b949281F334880F971C83cc));
    IERC20 constant token1 = IERC20(address(0x7f63729Ef58322A4605b192beA43D70c046Eac0E));
    IHooks constant hookContract = IHooks(address(0x1277c46643f57ebeAeD849baBcfb98B07D634aC0));

    Currency constant currency0 = Currency.wrap(address(token0));
    Currency constant currency1 = Currency.wrap(address(token1));
}
