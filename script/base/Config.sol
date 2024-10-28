// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IERC20} from "forge-std/interfaces/IERC20.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";
import {Currency} from "v4-core/src/types/Currency.sol";

/// @notice Shared configuration between scripts
contract Config {
    /// @dev populated with default anvil addresses
    IERC20 constant token0 = IERC20(address(0x0dB4ceE042705d47Ef6C0818E82776359c3A80Ca));
    IERC20 constant token1 = IERC20(address(0x7A46219950d8a9bf2186549552DA35Bf6fb85b1F));
    IHooks constant hookContract = IHooks(address(0xaA5f84D2F6A2423E50b3e598F934f6626e12CAc0));

    Currency constant currency0 = Currency.wrap(address(token0));
    Currency constant currency1 = Currency.wrap(address(token1));
}
