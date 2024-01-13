// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Stake} from "../src/Stake.sol";
import {MockERC20} from "./mocks/MockERC20.sol";

contract StakeTest is Test {
    Stake public stake;
    MockERC20 public mockERC20;

    function setUp() public {
        stake = new Stake();
        mockERC20 = new MockERC20();
    }

    function test_Transfer(uint8 amount) public {
        mockERC20.approve(address(stake), amount);
        bool result = stake.stake(amount, address(mockERC20));
        assertTrue(result);
    }
}
